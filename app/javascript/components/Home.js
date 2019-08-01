import React, { Component } from 'react';
import Person from './person/Person';

class Home extends Component {
  constructor(props) {
    super(props);
    this.state = {
      people: []
    };
    this.loadPeople = this.loadPeople.bind(this);
  }

  async loadPeople() {
    let response = await fetch('api/v1/persons/');
    const people = await response.json();
    this.setState({ people: people });
  }

  componentDidMount() {
    this.loadPeople();
  }

  render() {
    return (
      <div>
        <Person data={this.state.people} />
      </div>
    );
  }
}

export default Home;