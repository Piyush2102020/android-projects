package com.example.connect;


import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;

import java.util.ArrayList;

public class postAdapter extends RecyclerView.Adapter<postAdapter.ViewHolder> {
    ArrayList<postModel>list;
    Context context;

    public postAdapter(ArrayList<postModel>list, Context context){
    this.list=list;
    this.context=context;
    }
    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view= LayoutInflater.from(context).inflate(R.layout.post_lay,parent,false);
        ViewHolder viewHolder=new ViewHolder(view);
        return viewHolder;
    }

    @Override

    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {

        fun fun=new fun();
            if (list.get(position).isLiked()){
                holder.like.setImageResource(R.drawable.fill_heart);
            }
            else {
                holder.like.setImageResource(R.drawable.heart);
            }

            holder.username.setText(list.get(position).getUsername());
            holder.time.setText(list.get(position).getTime());
            holder.message.setText(list.get(position).getMessage());
            holder.comment.setText(String.valueOf(list.get(position).getComment()) );
            holder.likesCount.setText(String.valueOf(list.get(position).getLikes()) );

            holder.like.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if(list.get(position).isLiked()){
                        fun.postDiLike(list.get(position).getPushId());
                        holder.like.setImageResource(R.drawable.heart);
                        long newLike=list.get(position).getLikes()-1;
                        list.get(position).setLikes(newLike);
                        holder.likesCount.setText(String.valueOf(list.get(position).getLikes()));
                        list.get(position).setLiked(false);
                    }


                    else{
                    fun.postLike(list.get(position).getPushId());
                    holder.like.setImageResource(R.drawable.fill_heart);
                        long newLike=list.get(position).getLikes()+1;
                        list.get(position).setLikes(newLike);
                        holder.likesCount.setText(String.valueOf(list.get(position).getLikes()));
                    list.get(position).setLiked(true);
                }}
            });


            holder.commentBox.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent=new Intent(context,replies.class);
                    intent.putExtra("name",list.get(position).getName());
                    intent.putExtra("time",list.get(position).getTime());
                    intent.putExtra("message",list.get(position).getMessage());
                    intent.putExtra("postId",list.get(position).getPushId());
                    intent.putExtra("isLiked",list.get(position).isLiked());
                    intent.putExtra("likes",list.get(position).getLikes());
                    context.startActivity(intent);
                }
            });

            if (list.get(position).getDp()!=null && !list.get(position).getDp().isEmpty()){
                Glide.with(context).load(list.get(position).getDp()).placeholder(R.drawable.user).diskCacheStrategy(DiskCacheStrategy.ALL).into(holder.dp);
            }

            else {
                holder.dp.setImageResource(R.drawable.user);
            }

            if (list.get(position).isSaved()){
                holder.save.setImageResource(R.drawable.save_filled);

            }else {

                holder.save.setImageResource(R.drawable.save);
            }


            holder.save.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (list.get(position).isSaved()){
                        fun.removeSave(list.get(position).getPushId());
                        holder.save.setImageResource(R.drawable.save);
                    }

                    else {
                        holder.save.setImageResource(R.drawable.save_filled);
                        fun.postSave(list.get(position).getPushId());
                    }
                }
            });



    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView username,time,likesCount,comment,message;
        ImageView like,commentBox,save,dp;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            dp=itemView.findViewById(R.id.dp);
            save=itemView.findViewById(R.id.save);
            commentBox=itemView.findViewById(R.id.replies);
            username=itemView.findViewById(R.id.username);
            time=itemView.findViewById(R.id.time);
            likesCount=itemView.findViewById(R.id.likeCount);
            comment=itemView.findViewById(R.id.comment);
            message=itemView.findViewById(R.id.text);
            like=itemView.findViewById(R.id.like);
        }
    }
}
