<#include "header.ftl">

			<!-- Main -->
				<section id="main">
					<div class="container">

                        <#if ((content.layout)?has_content && (content.layout == "left-sidebar"))>
                        <div class="row">
                            <!-- Sidebar -->
                            <div id="sidebar" class="col-4 col-12-medium">
                            <#include "index-sidebar.ftl">
                            </div>
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
                                <!--<ul class="actions">
                                    <li><a href="${content.uri}" class="button icon solid fa-file">Continue Reading</a></li>
                                </ul>-->
                            </article>


                        <#if ((content.layout)?has_content && (content.layout == "left-sidebar"))>
                            </div>
                        <#elseif ((content.layout)?has_content && (content.layout == "right-sidebar"))>
                            </div>
                        <!-- Sidebar -->
                            <div id="sidebar" class="col-4 col-12-medium">
                            <#include "index-sidebar.ftl">
                            </div>
                        <#else>
                        </div>
                        </#if>
                    </div>
                </section>

<#include "footer.ftl">
