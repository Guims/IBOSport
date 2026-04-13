.class public final synthetic Lib/player/base/helper/y;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lib/player/base/helper/y;->b:I

    iput-object p2, p0, Lib/player/base/helper/y;->q:Ljava/lang/Object;

    iput-boolean p3, p0, Lib/player/base/helper/y;->r:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Lio/realm/y;)V
    .locals 4

    iget v0, p0, Lib/player/base/helper/y;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/base/helper/y;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lib/player/models/SeriesModel;

    const-string v2, "name"

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lib/player/base/helper/y;->r:Z

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_favorite(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/base/helper/y;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lib/player/models/EPGChannel;

    const-string v2, "name"

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lib/player/base/helper/y;->r:Z

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_recent(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lib/player/models/EPGChannel;->setRecent_pos(J)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lib/player/base/helper/y;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lib/player/models/MovieModel;

    const-string v2, "name"

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieModel;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lib/player/base/helper/y;->r:Z

    invoke-virtual {p1, v0}, Lib/player/models/MovieModel;->setIs_favorite(Z)V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lib/player/base/helper/y;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lib/player/models/EPGChannel;

    const-string v2, "name"

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lib/player/base/helper/y;->r:Z

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_favorite(Z)V

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, Lib/player/base/helper/y;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lib/player/models/EPGChannel;

    const-string v2, "name"

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lib/player/base/helper/y;->r:Z

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_locked(Z)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
