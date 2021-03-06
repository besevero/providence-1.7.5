<?php
/* ----------------------------------------------------------------------
 * themes/default/views/dashboard/dashboard_html.php : 
 * ----------------------------------------------------------------------
 * CollectiveAccess
 * Open-source collections management software
 * ----------------------------------------------------------------------
 *
 * Software by Whirl-i-Gig (http://www.whirl-i-gig.com)
 * Copyright 2010-2016 Whirl-i-Gig
 *
 * For more information visit http://www.CollectiveAccess.org
 *
 * This program is free software; you may redistribute it and/or modify it under
 * the terms of the provided license as published by Whirl-i-Gig
 *
 * CollectiveAccess is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTIES whatsoever, including any implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
 *
 * This source code is free and modifiable under the terms of 
 * GNU General Public License. (http://www.gnu.org/copyleft/gpl.html). See
 * the "license.txt" file for details, or visit the CollectiveAccess web site at
 * http://www.CollectiveAccess.org
 *
 * ----------------------------------------------------------------------
 */
 	require_once(__CA_LIB_DIR__.'/ca/DashboardManager.php');
 
	AssetLoadManager::register('draggableUI');		// adds jQuery UI draggable 
	AssetLoadManager::register('dashboard');			// adds caUI dashboard library
?>

<!-- Empty DIV uses for the "popup" widget chooser panel -->
<div id="dashboardWidgetPanel" class="dashboardWidgetPanel">
	<a href="#" onclick="caDashboardWidgetPanel.hideWidgetPanel();" class="dashboardWidgetPanelHide">&nbsp;</a>
		<div id="dashboardWidgetPanelTitle"><?php print _t('Add a Widget'); ?></div>
	<div id="dashboardWidgetPanelContent">
		<!-- empty -->
	</div>
</div>



<script type="text/javascript">
	// create javascript dashboard UI object - handles logic for the Javascript elements of the dashboard
	var caDashboard = caUI.initDashboard({
		reorderURL: '<?php print caNavUrl($this->request, '', 'Dashboard', 'moveWidgets'); ?>',
		
		dashboardClass: 'dashboard',
		columnClass: 'dashboardColumn',
		landingClass: 'dashboardLanding',
		widgetClass: 'portlet',
		widgetRemoveClass: 'dashboardRemoveWidget',
		widgetSettingsClass: 'dashboardWidgetSettingsButton',
		
		addID: 'dashboardAddButton',
		editID: 'dashboardEditButton',
		doneEditingID: 'dashboardDoneEditingButton',
		clearID: 'dashboardClearButton',
		welcomeMessageID: 'dashboard_welcome_message',
		editMessageID: 'dashboard_edit_message'
	});
	
	var caDashboardWidgetPanel = caUI.initWidgetPanel({widgetUrl: '<?php print caNavUrl($this->request, '', 'Dashboard', 'getAvailableWidgetList'); ?>'});
</script>
<div id="dashboardControls">
	<div id="clearDashboardControl" style="float: left;">
			<?php print caNavLink($this->request, _t('Clear dashboard').' &rsaquo;', 'dashboardControl', '', 'Dashboard', 'clear', array(), array('id' => 'dashboardClearButton')); ?>
	</div>
	
	<a href="#" onclick='caDashboard.editDashboard(1);' class='dashboardControl' id='dashboardEditButton'><?php print _t('Editar dashboard'); ?> &rsaquo;</a>
	<a href="#" onclick='caDashboardWidgetPanel.showWidgetPanel();' class='dashboardControl' id='dashboardAddButton'><?php print _t('Adicionar widget'); ?> &rsaquo;</a>
	<a href="#" onclick='caDashboard.editDashboard(0);' class='dashboardControl' id='dashboardDoneEditingButton'><?php print _t('Feito'); ?> &rsaquo;</a>
</div>
<div class="dashboard">
	<div class="dashboardWelcomeMessage" id="dashboard_welcome_message"><?php print _t('Este é o dashboard do CollectiveAccess.  Clique no botão "Editar Dashboard" para adicionar widgets em seu dashboard que o permitirão monitorar a atividade do sistema.  Você verá o dashboard sempre que fizer o login ou clicar no logo acima.'); ?></div>
	<div class="dashboardWelcomeMessage" id="dashboard_edit_message"><?php print _t('Use o botão acima para adicionar um widget em seu dashboard.  Você pode arrastar e soltar os widgets nas colunas para que eles apareçam.  Para personalizar a informação em cada widget, clique no botão <i>"i"</i> no canto superior direito do widget.  Para remover o widget do dashboard, clique no votão "X" no canto superior direito.  Clique no botão "Limpar dashboard" acima para remover os widgets de seu dashboard.  Ao terminar de editar seu dashboard, clique no botão "Feito" acima.'); ?></div>
	
	<div class="dashboardColumn"  id="dashboard_column_1">
	
		<div class="dashboardLanding" id="dashboardWidget_placeholder_1">
			<?php print _t("Arraste o widget para incluí-lo nesta coluna"); ?>
		</div>
		
		<?php print caGetDashboardWidgetHTML($this->request, 1);		// generate column 1  ?>
	
	</div><!-- end column -->
	
	<div class="dashboardColumn" id="dashboard_column_2">
		<div class="dashboardLanding" id="dashboardWidget_placeholder_2">
			<?php print _t("Arraste o widget para incluí-lo nesta coluna"); ?>
		</div>

		<?php caGetDashboardWidgetHTML($this->request, 2);		// generate column 2	?>

	</div>
</div><!-- End dashboard -->

<?php	
	// 
	// PHP convenience function to generate HTML for dashboard columns
	//
	function caGetDashboardWidgetHTML($po_request, $pn_column) {
		$o_dashboard_manager = DashboardManager::load($po_request);
		$va_widget_list = $o_dashboard_manager->getWidgetsForColumn($pn_column);
		foreach($va_widget_list as $vn_i => $va_widget_info) {
			print "<div class='portlet' id='dashboardWidget_{$pn_column}_{$vn_i}'>";
			print caNavLink($po_request, caNavIcon(__CA_NAV_ICON_DELETE__, '16px'), 'dashboardRemoveWidget', '', 'Dashboard', 'removeWidget', array('widget' => $va_widget_info['widget'], 'widget_id' => $va_widget_info['widget_id']));
			if($o_dashboard_manager->widgetHasSettings($va_widget_info['widget'])) {
				print "<a href='#' class='dashboardWidgetSettingsButton' onclick='jQuery(\"#content_".$va_widget_info['widget_id']."\").load(\"".caNavUrl($po_request, '', 'Dashboard', 'getSettingsForm')."\", { widget_id: \"".$va_widget_info['widget_id']."\" }); return false;'>".caNavIcon(__CA_NAV_ICON_INFO__, '16px')."</a>";
			}
			print '<div class="portlet-header">'.WidgetManager::getWidgetTitle($va_widget_info['widget']).'</div>';
			print '<div class="portlet-content" id="content_'.$va_widget_info['widget_id'].'">'.$o_dashboard_manager->renderWidget($va_widget_info['widget'], $va_widget_info['widget_id'], $va_widget_info['settings']).'</div>';
			print '</div>';
		}
	}
?>	