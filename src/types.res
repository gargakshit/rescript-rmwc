module Dialog = {
  type closeDetail = {action: option<string>}

  type onClose = {detail: closeDetail}
}

module TextField = {
  // type changeEvent = {currentTarget: Dom.htmlInputElement}
  type changeEvent = ReactEvent.synthetic<ReactEvent.Form.tag>
}
