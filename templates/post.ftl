<#include "header.ftl">

			<!-- Main -->
				<section id="main">
					<div class="container">

                        <#if ((content.layout)?has_content && (content.layout == "left-sidebar"))>
                        <div class="row">
                            <!-- Sidebar -->
                            <#include "post-sidebar.ftl">
                            <div id="content" class="col-8 col-12-medium imp-medium">
                        <#elseif ((content.layout)?has_content && (content.layout == "right-sidebar"))>
                        <div class="row">
                            <!-- Content -->
                            <div id="content" class="col-8 col-12-medium">
                        <#else>
                        <div id="content">
                        </#if>

                            <!-- Post -->
                            <article class="box post">
                                <header>
                                    <h2>${content.title}</h2>
                                </header>
                                <#if (content.image)??>
                                <span class="image featured"><img src="${content.image}" alt="" /></span>
                                <#else></#if>
                                <h3>${content.date?string("dd MMMM yyyy")}</h3>
                                <p>${content.body}</p>
                                <#if ((content.nextContent)?has_content !! (content.previousContent)?has_content)>
                                    <ul class="actions">
                                        <#if (content.nextContent)?has_content>
                                        <li><a href="${content.rootpath}${content.nextContent.noExtensionUri!content.nextContent.uri}" class="button icon solid fa-file">${content.nextContent.title}</a></li>
                                        <#else>
                                        </#if>
                                        <#if (content.previousContent)?has_content>
                                        <li style="text-align: right;"><a href="${content.rootpath}${content.previousContent.noExtensionUri!content.previousContent.uri}" class="button icon solid fa-file">${content.previousContent.title}</a></li>
                                        <#else>
                                        </#if>
                                    </ul>
                                <#else>

                                </#if>

                            </article>

                        <#if ((content.layout)?has_content && (content.layout == "left-sidebar"))>
                            </div>
                        <#elseif ((content.layout)?has_content && (content.layout == "right-sidebar"))>
                            </div>
                            <!-- Sidebar -->
                            <#include "post-sidebar.ftl">
                        <#else>
                        </div>
                        </#if>
                    </div>
                </section>

<#include "footer.ftl">
