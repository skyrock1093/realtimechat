import React from 'react'

import Modal from 'react-modal'

class SidenavHeaderModal extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {

  }

  render() {
    const { isOpen, onRequestClose } = this.props

    return (
      <Modal
        isOpen={true}
        onRequestClose={onRequestClose}
      >
        <h2>Im a modal!</h2>
        <p>modal modal modal modal modal</p>
        <p>mooooooooodal!</p>
      </Modal>
    )
  }
}

export default SidenavHeaderModal
