<#include "header.ftl">

    <!-- Main -->
    <section id="main">
        <div class="container">
            <div class="row">
                <div id="content" class="col-8 col-12-medium">
                    <h2>Blog Archive</h2>
                    <#list published_posts as post>
                    <#if (last_month)??>
                        <#if post.date?string("MMMM yyyy") != last_month>
                            </ul>
                            <h4>${post.date?string("MMMM yyyy")}</h4>
                            <ul>
                    </#if>
                    <#else>
                        <h4>${post.date?string("MMMM yyyy")}</h4>
                        <ul>
                    </#if>

                    <li>${post.date?string("dd")} - <a href="${content.rootpath}${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
                    <#assign last_month = post.date?string("MMMM yyyy")>
                    </#list>
                    </ul>

                </div>
                <#include "index-sidebar.ftl">
            </div>
        </div>
    </section>

<#include "footer.ftl">
