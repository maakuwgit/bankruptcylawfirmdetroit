<footer>
    <!-- #Include file="\PageWidgets\Topbar.aspx" -->
    <div class="container row space-between">
		<figure class="col-12 col-sm-6 col-xl-4">
			<a class="block" href="/"><img src="/images/logo-footer.png" class="img-fluid"></a>
		</figure>
		<nav class="col-12 col-sm-6 col-xl-4">
			<%= WebSite.Link(30).addClass("text-primary-dark px-2").createElement() %>
			<%= WebSite.Link(5).addClass("text-primary-dark px-2").createElement() %>
			<%= WebSite.Link(29).addClass("text-primary-dark px-2").createElement() %>
			<%= WebSite.Link(2).addClass("text-primary-dark px-2").createElement() %>
			<%= WebSite.Link(4).addClass("text-primary-dark px-2").createElement() %>
			<%= WebSite.Link(8).addClass("text-primary-dark px-2").createElement() %>
			<%= WebSite.Link(9).addClass("text-primary-dark pl-2 pr-0").createElement() %>
		</nav>
		<small><%= Website.Company.CopyrightStatement %> All rights reserved.</small>
	</div>
</footer>