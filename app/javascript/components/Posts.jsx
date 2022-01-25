import React, { Component } from 'react';
import axios from 'axios';
import PostCard from './PostCard/PostCard';
import PostForm from './PostForm/PostForm';

class Post extends Component {
    constructor(props) {
        super(props);
        this.state = {
            posts: []
        };
    }
    componentDidMount() {
        axios.get("api/v1/posts/index")
            .then((res) => {
                const posts = res.data["data"];
                this.setState({ posts });
            })
            .catch((error) => console.log(error));
    }

    render() {
        return (
            <div className='container mb-10'>
                <PostForm />
                <div>Posts</div>
                {this.state.posts.map(post => {
                    return (
                        <PostCard key={post.id} post={post["attributes"]} />
                    );
                })}
            </div>
          );
        }
    }



export default Post;