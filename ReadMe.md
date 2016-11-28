<h1>This is simple way of resizing your NSLayoutConstraints applied to UIView and it's subviews</h1>
<h2>Steps</h2>
<ul>
  <li> Drag and Drop AutoLayout.swift file in your xcode project select copy item
  <li> In storyboard select the constraint you want to resize, if the constraint is width, leading, trailing than give identifier name as width.
  <li> for height, top, bottom constraint give identifier name as height.
  <li> call func resizeDependingOnDevice(view: UIView) in your viewDidLoad function and for parameter pass view.
</ul>
