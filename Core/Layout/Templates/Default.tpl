{include:Core/Layout/Templates/Head.tpl}

<body id="home">
	{include:Core/Layout/Templates/Header.tpl}

	<div class="holder" id="contentHolder">
		<div id="content" class="row">
			{option:!hideContentTitle}
				<header class="col-12">
					<h1>{$page.title}</h1>
				</header>
			{/option:!hideContentTitle}

			<section class="col-8">
				{* Main position *}
				{iteration:positionMain}
					{option:positionMain.blockIsHTML}
						{$positionMain.blockContent}
					{/option:positionMain.blockIsHTML}
					{option:!positionMain.blockIsHTML}
						{$positionMain.blockContent}
					{/option:!positionMain.blockIsHTML}
				{/iteration:positionMain}
			</section>

			<aside class="col-4">
				{* Right position *}
				{iteration:positionRight}
					{option:positionRight.blockIsHTML}
						{$positionRight.blockContent}
					{/option:positionRight.blockIsHTML}
					{option:!positionRight.blockIsHTML}
						{$positionRight.blockContent}
					{/option:!positionRight.blockIsHTML}
				{/iteration:positionRight}
			</aside>
		</div>

		<noscript>
			<div class="message notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</noscript>
	</div>

	<div class="holder" id="doormatHolder">
		{include:Core/Layout/Templates/Doormat.tpl}
	</div>

	<div class="holder" id="footerHolder">
		{include:Core/Layout/Templates/Footer.tpl}
	</div>

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	<script src="{$THEME_URL}/Core/Js/respond.min.js"></script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>