									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="${content.uri}">${content.title}</a></h2>
											</header>
											<#if (content.image)??>
											<span class="image featured"><img src="${content.image}" alt="" /></span>
											<#else></#if>
											<h3>${content.date?string("dd MMMM yyyy")}</h3>
											<p>${content.body}</p>
											<ul class="actions">
												<li><a href="${content.uri}" class="button icon solid fa-file">Continue Reading</a></li>
											</ul>
										</article>
