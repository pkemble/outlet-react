import React, { Component } from "react";
import ReactHtmlParser from 'react-html-parser';
import 'draft-js/dist/Draft.css';

class PostCard extends Component {

    render() {
        const post = this.props["post"];
    
        return (
            <div>
                <div key={post.id}>
                    <div>
                        {post.post_date} : {post.title}
                    </div>
                    <div className="postContent" >
                        {ReactHtmlParser(post.content_slug)}
                    </div>
                </div>
            </div>
        );
    }
}

export default PostCard;