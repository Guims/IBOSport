.class public final synthetic Lib/player/base/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/x;
.implements Lk0/n;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lib/player/base/c;->b:I

    iput-object p1, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq0/b;Ljava/lang/String;JJ)V
    .locals 0

    const/16 p1, 0xc

    iput p1, p0, Lib/player/base/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lq0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-interface {p1, v0}, Lq0/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j(Lio/realm/y;)V
    .locals 3

    iget v0, p0, Lib/player/base/c;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lib/player/models/MovieModel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/MovieModel;->setIs_favorite(Z)V

    :cond_0
    return-void

    :pswitch_0
    const-class v0, Lib/player/models/EPGChannel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_locked(Z)V

    :cond_1
    return-void

    :pswitch_1
    const-class v0, Lib/player/models/EPGChannel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_favorite(Z)V

    :cond_2
    return-void

    :pswitch_2
    const-class v0, Lib/player/models/EPGChannel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_locked(Z)V

    :cond_3
    return-void

    :pswitch_3
    const-class v0, Lib/player/models/EPGChannel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_favorite(Z)V

    :cond_4
    return-void

    :pswitch_4
    const-class v0, Lib/player/models/SeriesModel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_favorite(Z)V

    :cond_5
    return-void

    :pswitch_5
    const-class v0, Lib/player/models/SeriesModel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_favorite(Z)V

    :cond_6
    return-void

    :pswitch_6
    const-class v0, Lib/player/models/MovieModel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieModel;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/MovieModel;->setIs_favorite(Z)V

    :cond_7
    return-void

    :pswitch_7
    const-class v0, Lib/player/models/SeriesModel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_favorite(Z)V

    :cond_8
    return-void

    :pswitch_8
    const-class v0, Lib/player/models/MovieModel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieModel;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/MovieModel;->setIs_favorite(Z)V

    :cond_9
    return-void

    :pswitch_9
    const-class v0, Lib/player/models/EPGChannel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_locked(Z)V

    :cond_a
    return-void

    :pswitch_a
    const-class v0, Lib/player/models/EPGChannel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/c;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/EPGChannel;->setIs_favorite(Z)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
