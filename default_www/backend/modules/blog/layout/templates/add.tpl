{include:file='{$BACKEND_CORE_PATH}/layout/templates/head.tpl'}
{include:file='{$BACKEND_CORE_PATH}/layout/templates/structure_start_module.tpl'}

<div class="pageTitle">
	<h2>{$lblBlog|ucfirst}: {$lblAdd}</h2>
</div>

{form:add}
	{$txtTitle} {$txtTitleError}

	<div id="pageUrl">
		<div class="oneLiner">
			{option:detailURL}<p><span><a href="{$detailURL}">{$detailURL}/<span id="generatedUrl"></span></a></span></p>{/option:detailURL}
			{option:!detailURL}<p class="infoMessage">{$errNoModuleLinked}</p>{/option:!detailURL}
		</div>
	</div>

	<div class="tabs">
		<ul>
			<li><a href="#tabContent">{$lblContent|ucfirst}</a></li>
			<li><a href="#tabPermissions">{$lblComments|ucfirst}</a></li>
			<li><a href="#tabSEO">{$lblSEO|ucfirst}</a></li>
		</ul>

		<div id="tabContent">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td id="leftColumn">

						{* Main content *}
						<div class="box">
							<div class="heading headingRTE">
								<h3>{$lblMainContent|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></h3>
							</div>
							<div class="optionsRTE">
								{$txtText} {$txtTextError}
							</div>
						</div>

						{* Summary *}
						<div class="box">
							<div class="heading">
								<div class="oneLiner">
									<h3>{$lblSummary|ucfirst}</h3>
									<abbr class="help">(?)</abbr>
									<div class="tooltip" style="display: none;">
										<p>{$msgHelpSummary}</p>
									</div>
								</div>
							</div>
							<div class="optionsRTE">
								{$txtIntroduction} {$txtIntroductionError}
							</div>
						</div>

					</td>

					<td id="sidebar">
						<div id="publishOptions" class="box">
							<div class="heading">
								<h3>{$lblPublish|ucfirst}</h3>
							</div>

							<div class="options">
								<ul class="inputList">
									{iteration:hidden}
									<li>
										{$hidden.rbtHidden}
										<label for="{$hidden.id}">{$hidden.label}</label>
									</li>
									{/iteration:hidden}
								</ul>
							</div>

							<div class="options">
								<p>
									<label for="publishOnDate">{$lblPublishOn|ucfirst}:</label>
									{$txtPublishOnDate} {$txtPublishOnDateError}
								</p>
								<p>
									<label for="publishOnTime">{$lblAt}</label>
									{$txtPublishOnTime} {$txtPublishOnTimeError}
								</p>
							</div>

							<div class="footer">
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td><p>&nbsp;</p></td>
											<td>
												<div class="buttonHolderRight">
													<input id="save" class="inputButton button mainButton" type="submit" name="save" value="{$lblPublish|ucfirst}" />
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div id="category" class="box">
							<div class="heading">
								<h4>{$lblCategory|ucfirst}</h4>
								<div class="buttonHolderRight">
									<a href="#newCategory" class="toggleDiv button icon iconAdd iconOnly"><span>{$lblAddCategory|ucfirst}</span></a>
								</div>
							</div>
							<div class="options">
								{$ddmCategoryId} {$ddmCategoryIdError}
							</div>
							<div id="newCategory" class="options hidden">
								<div class="oneLiner">
									<p>
										<input id="newCategoryValue" class="inputTextfield dontSubmit" type="text" name="new_category" />
										<span id="newCategoryError" class="formError">{$errAddingCategoryFailed}</span>
									</p>
									<div class="buttonHolder">
										<a href="#" id="newCategoryButton" class="button icon iconAdd iconOnly"><span>{$lblAddCategory|ucfirst}</span></a>
									</div>
								</div>
							</div>
						</div>

						<div id="authors" class="box">
							<div class="heading">
								<h4>{$lblAuthor|ucfirst}</h4>
							</div>
							<div class="options">
								{$ddmUserId} {$ddmUserIdError}
							</div>
						</div>

						<div id="tagBox" class="box">
							<div class="heading">
								<h4>{$lblTags|ucfirst}</h4>
							</div>

							<div class="options">
								{$txtTags} {$txtTagsError}
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<div id="tabPermissions">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td>
						{$chkAllowComments} <label for="allowComments">{$lblAllowComments|ucfirst}</label>
					</td>
				</tr>
			</table>
		</div>

		<div id="tabSEO">
			{include:file='{$BACKEND_CORE_PATH}/layout/templates/seo.tpl'}
		</div>
	</div>

	<div class="fullwidthOptions">
		<div class="buttonHolderRight">
			<input id="addButton" class="inputButton button mainButton" type="submit" name="add" value="{$lblPublish|ucfirst}" />
		</div>
	</div>
{/form:add}

{include:file='{$BACKEND_CORE_PATH}/layout/templates/structure_end_module.tpl'}
{include:file='{$BACKEND_CORE_PATH}/layout/templates/footer.tpl'}