<ui class="posts">

  <% _.each( list , function( article ) { %>

    <li id="<%= article.name.replace( ' ', '-' ) %>" class="post-article">

      <h3 class="post-title"><a href="<%= article.url %>" alt="Link to <%= article.name %>" ><%= article.name %></a></h3>
      <h4><%= article.date %> by <%= article.author %></h4>

      <% if ( article.stats ) { %>

          <ul class="post-stats">

            <li>Length: <%= article.stats.length %> Words</li>

          </ul>

        <% } %>

      <% if ( article.tags && article.tags.length ) { %>

        <ul class="tags">

          <% _.each( article.tags, function( tag ) { %>
            <li><%= tag %>
          <% } );%>

        </ul>

      <% }%>

    </li>

   <% } );%>

</ui>
