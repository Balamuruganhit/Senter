<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<#assign nowTimestamp = Static["org.apache.ofbiz.base.util.UtilDateTime"].nowTimestamp()>

<div id="footer">
  <ul>
    <li>
      ${uiLabelMap.CommonCopyright} (c) 2023-${nowTimestamp?string("yyyy")} Pangun Technologies - <a href="http://www.pangun.tech<" target="_blank">www.pangun.tech</a><br/>
      ${uiLabelMap.CommonPoweredBy} <a href="http://www.pangun.tech<" target="_blank">Pangun NeoERP</a>  ${uiLabelMap.CommonRelease}
    </li>
    <li class="opposed">${nowTimestamp?datetime?string.short} -
  <a href="<@ofbizUrl>ListTimezones</@ofbizUrl>">${timeZone.getDisplayName(timeZone.useDaylightTime(), Static["java.util.TimeZone"].LONG, locale)}</a>
    </li>
  </ul>
</div>

<#if layoutSettings.VT_FTR_JAVASCRIPT?has_content>
  <#list layoutSettings.VT_FTR_JAVASCRIPT as javaScript>
    <script src="<@ofbizContentUrl>${StringUtil.wrapString(javaScript)}</@ofbizContentUrl>" type="application/javascript"></script>
  </#list>
</#if>

</div>
<@scriptTagsFooter/>
</body>
</html>
