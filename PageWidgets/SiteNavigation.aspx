<!-- #Include file="\PageWidgets\SVGSprite.aspx" -->
<header class="navbar top" role="banner">
    <!-- #Include file="\PageWidgets\Topbar.aspx" -->

	<%= WebSite.Link("Home").addClass("flex").CreateElementForImage(WebSite.Image("Logo").addClass("logo logo--header")) %>
  	<div class="navbar-header container row between centered">
		<%= WebSite.Link(7).addClass("text-uppercase px-2 btn btn-danger font-size-75 ml-auto").createElement() %>
		<nav class="primary-nav flex" id="primary-nav" role="navigation">
			<ul class="nav navbar-nav">
				<li><%= WebSite.Link(30).addClass("nav-link ").createElement() %></li>
				<li>
					<a><%= WebSite.Link(1).GetLabel() %></a>
					<div class="dropdown-menu rounded-0" aria-labelledby="ChallengesDropdown">
						<%= Website.Link(1).AddClass("dropdown-item").CreateChildListElement() %>
					</div>
				</li>
				<li><%= WebSite.Link(5).addClass("nav-link ").createElement() %></li>
				<li><%= WebSite.Link(29).addClass("nav-link ").createElement() %></li>
				<li>
					<a><%= WebSite.Link(2).GetLabel() %></a>
					<div class="dropdown-menu rounded-0" aria-labelledby="SolutionsDropdown">
						<%= Website.Link(2).AddClass("dropdown-item").CreateChildListElement() %>
					</div>
				</li>
				<li>
					<a><%= WebSite.Link(4).GetLabel() %></a>
					<div class="dropdown-menu rounded-0" aria-labelledby="ResourcesDropdown">
						<%= Website.Link(4).AddClass("dropdown-item").CreateChildListElement() %>
					</div>
				</li>
				<li class="d-none d-lg-block"><%= WebSite.Link(7).addClass("text-uppercase px-4 btn btn-danger py-1").createElement() %></li>
				<li>
			</ul>
    	</nav><!-- .primary-nav -->

		<button type="button" class="navbar-toggle navbar-toggle--stand" data-nav="collapse" data-target="#primary-nav">
			<span class="sr-only">Toggle navigation</span>
			<span class="navbar-toggle__box">
				<span class="navbar-toggle__inner"></span>
			</span><!-- .navbar-toggle__box -->
		</button><!-- .navbar-toggle -->

 	 </div>

</header>