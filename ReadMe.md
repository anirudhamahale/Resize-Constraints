<h1>This is simple way of modifying your NSLayoutConstraints applied to UIView and it's subviews</h1>
<h2>Steps</2>
<ul>
  <li style="font-size:30px"> Drag and Drop AutoLayout.swift file in your xcode project select copy item
  <li style="font-size:30px"> In storyboard select the constraint you want to resize, if the constraint is width, leading, trailing than give identifier name as width.
  <li style="font-size:30px"> for height, top, bottom constraint give identifier name as height.
  <li style="font-size:30px"> call func resizeDependingOnDevice(view: UIView) in your viewDidLoad function and for parameter pass view.
</ul>
