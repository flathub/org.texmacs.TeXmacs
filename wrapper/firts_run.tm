<TeXmacs|2.1.4>

<style|<tuple|generic|spanish>>

<\body>
  <verbatim|/app/share/texmacs-flatpak/firts_run.tm>

  <section|General information>

  TeXmacs runs in an isolated space, separate from the system applications,
  so all the tools it has are those tested in the package and can be
  installed via plugins.

  It already includes Gnuplot, SymPy, Graphviz and Eukleides and pip, to
  install python packages.

  Access to the system is restricted only to the "Documents" folder, if you
  want to change the permissions you can do so via commands or use Flatseal,
  available from Flathub.

  \;

  Report bugs at: <verbatim|https://github.com/flathub/org.texmacs.TeXmacs>

  \ 

  <section|Installing plugins>

  Flathub has a plugin system that can be used to expand the capabilities of
  TeXmacs.

  <subsection|Installing TeXLive>

  TeXLive is not included with the package by default, it can be installed by
  running,

  \;

  <verbatim|flatpak install org.freedesktop.Sdk.Extension.texlive//24.08>

  \;

  The download is around 2.6 GiB and takes up 5.5 GiB according to Flathub.
  Note that TeXmacs is only compatible with a certain version of the TeXLive
  package, and can be shared with other Flatpaks, only if they use that same
  version.

  <subsection|Installing TeXmacs extensions>

  TeXmacs extensions are advertised on Flathub, at the bottom of their page,
  in the \PAdd-ons\Q section. The current extensions are:

  <\big-table|<tabular|<tformat|<cwith|1|1|1|-1|cell-background|light
  grey>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<table|<row|<cell|Extension
  name>|<cell| Includes>>|<row|<cell|org.texmacs.TeXmacs.Plugin.pack1>|<cell|Add
  Giac and Macaulay2>>|<row|io.github.wxmaxima_developers.wxMaxima.Plugin.maxima|<cell|Add
  Maxima>>>>>>
    \;
  </big-table>

  To install an extension:

  <verbatim|flatpak install org.texmacs.TeXmacs.Plugin.pack1>

  <subsection|Installing python packages>

  To install any package you need to have the \Sshare=network\T permission,
  TeXmacs has it by default, so run,

  \;

  <\verbatim>
    \ flatpak run --command=sh org.texmacs.TeXmacs

    \ \ \ \ pip install --user package
  </verbatim>

  <section|Other considerations>

  Including new dependencies to meet your needs is relatively simple, however
  it is very difficult to support all the tools that can be used from
  TeXmacs. If you want to discuss adding one or supporting it, start a
  discussion at <verbatim|https://github.com/flathub/org.texmacs.TeXmacs>.

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|1>>
    <associate|auto-5|<tuple|1|1>>
    <associate|auto-6|<tuple|2.3|1>>
    <associate|auto-7|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        \;
      </surround>|<pageref|auto-5>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>General
      information> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Installing
      plugins> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Installing TeXLive
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Installing TeXmacs
      extensions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Installing python packages
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Other
      considerations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>