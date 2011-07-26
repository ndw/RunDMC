(: TODO: make this dynamic, using real data from the database :)
<ml:widget xmlns="http://www.w3.org/1999/xhtml" xmlns:ml="http://developer.marklogic.com/site/internal">
  <div class="head">
    <h2>Recent Blog Posts</h2>
    <a class="more" href="/blog">View blog</a>
  </div>


  <div class="body">
    <h3><a href="/blog/learning-with-query-trace">Learning with xdmp:query-trace()</a></h3>
    <div class="author">by Evan Lenz, July 20, 2011</div>
    <div class="message">
    <p>One
    of the things I love to do is learn and help other people learn.
    I'm still relatively new to MarkLogic, so there's a lot I can't
    really write about, since I haven't learned it yet. But as long as
    I keep my learning one step ahead of my writing, then I (and you
    readers!) should be safe and not wildly misled. One
    tool I've been using to learn how MarkLogic evaluates queries is
    the xdmp:query-trace() function...</p>
    </div>
  </div>

  <div class="body">
    <h3><a href="/blog/good-xml-design-and-performance">Good XML design and performance</a></h3>
    <div class="author">by Evan Lenz, July 14, 2011</div>
    <div class="message">
    <p>MarkLogic has always tried to ensure that
    well-designed XML performs well "as is" in MarkLogic Server. For example, if your
    schema uses descriptive, unique element names, that is not only
    going to make your application code clean and readable but it will
    be fast too. On the other hand, if your schema contains a lot of
    generic element names (such as "item") used in multiple ways, then
    it's going to make for harder-to-read code (in XQuery or XSLT), and
    it might also require you to do some extra leg work to get the best
    performance...</p> 
    </div>
  </div>

  <div class="body">
    <h3><a href="/blog/balisage2011">MarkLogic at Balisage 2011</a></h3>
    <div class="author">by Evan Lenz, July 12, 2011</div>
    <div class="message">
    <p>MarkLogic will be well represented at <a href="http://balisage.net">Balisage 2011</a>. Not only are we sponsoring the conference once again (and hosting <a href="/news/balisage2011">a Chinese banquet</a>, including a dinner conversation game that should be a lot of fun), but a bunch of us will be there to geek out with the rest of you. Jason Hunter, Mary Holstege, and John Snelson will all be there, and three of us will be speaking, with these topics...</p>
    </div>
  </div>

  <div class="body">
    <h3><a href="/blog/xquery-coding-guidelines">XQuery Coding Guidelines</a></h3>
    <div class="author">by Micah Dubinko, June 29, 2011</div>
    <div class="message">
    <p>Code gets <a href="http://www.python.org/dev/peps/pep-0008/">read more often than it gets written</a>, so how it gets laid out on the screen is a critical component of maintainability. When a project involves more than one person checking in code, it gets even more important. So here's a peek inside the MarkLogic Engineering team's process -- our set of agreed-upon guidelines for formatting XQuery code...</p>
    </div>
  </div>







{(:
  <div class="body">
    <a class="more" href="">+ Show more</a>
  </div>
:)}

</ml:widget>

