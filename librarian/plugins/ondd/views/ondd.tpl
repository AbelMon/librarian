<%inherit file="_dashboard_section.tpl"/>
<%namespace name="settings_form" file="ondd/_settings_form.tpl"/>
<%namespace name="signal" file="ondd/_signal.tpl"/>
<%namespace name="file_list" file="ondd/_file_list.tpl"/>
<%namespace name="presets" file="ondd/_presets.tpl"/>

<style>@import "${url('plugins:ondd:static', path='ondd.css')}";</style>

<p id="signal-status" class="signal-status" data-url="${i18n_url('plugins:ondd:status')}">
    ${signal.body()}
</p>

${settings_form.body()}

% if files:
<h3>
## Translators, used as title of a subsection in dashboard that lists files that are currently being downloaded
${_('Downloads in progress')}
</h3>
<div id="ondd-file-list" data-url="${i18n_url('plugins:ondd:files')}">
    ${file_list.body()}
</div>
% endif

${presets.body()}

