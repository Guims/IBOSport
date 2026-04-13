.class public final Lib/player/base/h;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/util/List;

.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:Lib/player/base/k;


# direct methods
.method public native synthetic constructor <init>(Lib/player/base/k;Ljava/util/List;Ljava/util/List;I)V
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2

    iget p1, p0, Lib/player/base/h;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lib/player/base/h;->s:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_1

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->Q()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lib/player/base/k;->N()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lib/player/base/h;->s:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_3

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->I()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lib/player/base/k;->K()V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lib/player/base/h;->s:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_5

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->F()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lib/player/base/k;->I()V

    :cond_5
    :goto_2
    return-void

    :pswitch_2
    iget-object p1, p0, Lib/player/base/h;->s:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_7

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge p2, v0, :cond_6

    add-int/2addr p2, v1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->J()V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v1}, Lib/player/base/k;->A(Z)V

    :cond_7
    :goto_3
    return-void

    :pswitch_3
    iget-object p1, p0, Lib/player/base/h;->s:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_9

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge p2, v0, :cond_8

    add-int/2addr p2, v1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->N()V

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v1}, Lib/player/base/k;->A(Z)V

    :cond_9
    :goto_4
    return-void

    :pswitch_4
    iget-object p1, p0, Lib/player/base/h;->s:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_b

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_a

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->K()V

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lib/player/base/k;->J()V

    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4

    iget p1, p0, Lib/player/base/h;->b:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/h;->s:Lib/player/base/k;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, v0, Lib/player/base/k;->X:I

    iget-object p1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/g;

    const/4 v2, 0x5

    invoke-direct {v1, p2, v2}, Lib/player/base/g;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object p1, p0, Lib/player/base/h;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/16 v3, 0xb

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lib/player/base/h;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/ResumeModel;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/d;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3}, Lib/player/base/d;-><init>(Lib/player/models/ResumeModel;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_1

    :cond_1
    iget-boolean p1, v0, Lib/player/base/k;->W:Z

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lib/player/base/k;->N()V

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/h;->s:Lib/player/base/k;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput p1, v0, Lib/player/base/k;->X:I

    iget-object p1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/g;

    const/4 v2, 0x4

    invoke-direct {v1, p2, v2}, Lib/player/base/g;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object p1, p0, Lib/player/base/h;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/16 v3, 0x9

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lib/player/base/h;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/16 v3, 0xa

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_3

    :cond_4
    iget-boolean p1, v0, Lib/player/base/k;->W:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lib/player/base/k;->K()V

    :cond_5
    return-void

    :pswitch_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/h;->s:Lib/player/base/k;

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    iput p1, v0, Lib/player/base/k;->X:I

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/g;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v2}, Lib/player/base/g;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object p1, p0, Lib/player/base/h;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/4 v3, 0x7

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lib/player/base/h;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/16 v3, 0x8

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_5

    :cond_7
    iget-boolean p1, v0, Lib/player/base/k;->W:Z

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lib/player/base/k;->Q()V

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lib/player/base/k;->I()V

    goto :goto_6

    :cond_9
    iget-boolean p1, v0, Lib/player/base/k;->W:Z

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lib/player/base/k;->I()V

    :cond_a
    :goto_6
    return-void

    :pswitch_2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/h;->s:Lib/player/base/k;

    if-eqz p1, :cond_c

    iget-object p1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/g;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lib/player/base/g;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object p1, p0, Lib/player/base/h;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/4 v3, 0x6

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lib/player/base/h;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/ResumeSeriesModel;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/e;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3}, Lib/player/base/e;-><init>(Lib/player/models/ResumeSeriesModel;I)V

    const/4 p2, 0x0

    invoke-virtual {v1, v2, p2}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    goto :goto_8

    :cond_c
    iget-boolean p1, v0, Lib/player/base/k;->W:Z

    if-nez p1, :cond_d

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lib/player/base/k;->A(Z)V

    :cond_d
    return-void

    :pswitch_3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/h;->s:Lib/player/base/k;

    if-eqz p1, :cond_f

    iget-object p1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/g;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lib/player/base/g;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object p1, p0, Lib/player/base/h;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/4 v3, 0x5

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_9

    :cond_e
    iget-object p1, p0, Lib/player/base/h;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/ResumeSeriesModel;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/e;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lib/player/base/e;-><init>(Lib/player/models/ResumeSeriesModel;I)V

    const/4 p2, 0x0

    invoke-virtual {v1, v2, p2}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    goto :goto_a

    :cond_f
    iget-boolean p1, v0, Lib/player/base/k;->W:Z

    if-nez p1, :cond_10

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lib/player/base/k;->A(Z)V

    :cond_10
    return-void

    :pswitch_4
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/h;->s:Lib/player/base/k;

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    iput p1, v0, Lib/player/base/k;->X:I

    iget-object p1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/g;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lib/player/base/g;-><init>(Lretrofit2/Response;I)V

    invoke-virtual {p1, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object p1, p0, Lib/player/base/h;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/c;

    const/4 v3, 0x4

    invoke-direct {v2, p2, v3}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_b

    :cond_11
    iget-object p1, p0, Lib/player/base/h;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_12

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/ResumeModel;

    iget-object v1, v0, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v2, Lib/player/base/d;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lib/player/base/d;-><init>(Lib/player/models/ResumeModel;I)V

    invoke-virtual {v1, v2}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_c

    :cond_12
    iget-boolean p1, v0, Lib/player/base/k;->W:Z

    if-nez p1, :cond_13

    invoke-virtual {v0}, Lib/player/base/k;->J()V

    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
