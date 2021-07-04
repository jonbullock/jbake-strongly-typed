<#include "header.ftl">

<#include "index-features.ftl">

<#include "index-banner.ftl">

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

                                <#list published_posts as content>
                                    <#include "content-single.ftl">
                                </#list>

								</div>

								<#include "index-sidebar.ftl">

						</div>
					</div>
				</section>

<#include "footer.ftl">
