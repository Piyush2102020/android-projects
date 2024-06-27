package com.example.connect;

import android.net.ipsec.ike.ChildSaProposal;

public class postModel {
    private String pushId;
    private String time;
    private String message;
    private String userId;
    private String name;
    private String username;
    private long likes;
    private long comment;
    private boolean isLiked;
    private boolean isSaved;
    private String dp;

    public boolean isSaved() {
        return isSaved;
    }

    public void setSaved(boolean saved) {
        isSaved = saved;
    }

    public String getDp() {
        return dp;
    }

    public void setDp(String dp) {
        this.dp = dp;
    }

    public postModel(String pushId, String time, String message, String userId, String name, String username, long likes, long comment, boolean isLiked
    , boolean isSaved, String dp) {

        this.isSaved=isSaved;
        this.dp=dp;
        this.pushId = pushId;
        this.time = time;
        this.message = message;
        this.userId = userId;
        this.name = name;
        this.username = username;
        this.likes = likes;
        this.comment = comment;
        this.isLiked = isLiked;
    }

    // Create getters and setters for all fields

    public String getPushId() {
        return pushId;
    }

    public void setPushId(String pushId) {
        this.pushId = pushId;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public long getLikes() {
        return likes;
    }

    public void setLikes(long likes) {
        this.likes = likes;
    }

    public long getComment() {
        return comment;
    }

    public void setComment(long comment) {
        this.comment = comment;
    }

    public boolean isLiked() {
        return isLiked;
    }

    public void setLiked(boolean liked) {
        isLiked = liked;
    }
}
