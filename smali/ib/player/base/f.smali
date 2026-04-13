.class public final synthetic Lib/player/base/f;
.super Ljava/lang/Object;

# interfaces
.implements Lt4/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/base/k;

.field public final synthetic r:Lio/realm/T;

.field public final synthetic s:Ljava/util/List;

.field public final synthetic t:Ljava/util/List;


# direct methods
.method public native synthetic constructor <init>(Lib/player/base/k;Lio/realm/T;Ljava/util/List;Ljava/util/List;I)V
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lib/player/base/f;->b:I

    check-cast p1, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/base/f;->r:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lib/player/base/f;->q:Lib/player/base/k;

    if-eq v0, v1, :cond_1

    iget-object v0, v2, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/b;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p1}, Lib/player/base/b;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object v0, p0, Lib/player/base/f;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v4, Lib/player/base/c;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/base/f;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/ResumeModel;

    iget-object v3, v2, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v4, Lib/player/base/d;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lib/player/base/d;-><init>(Lib/player/models/ResumeModel;I)V

    invoke-virtual {v3, v4}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, v2, Lib/player/base/k;->W:Z

    if-nez v0, :cond_2

    invoke-virtual {v2, p1}, Lib/player/base/k;->G(Ljava/util/List;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/base/f;->r:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lib/player/base/f;->q:Lib/player/base/k;

    if-eq v0, v1, :cond_4

    iget-object v0, v2, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v1, Lib/player/base/b;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lib/player/base/b;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lio/realm/y;->B(Lio/realm/x;)V

    iget-object v0, p0, Lib/player/base/f;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v4, Lib/player/base/c;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lib/player/base/f;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lib/player/base/k;->R:Lio/realm/y;

    new-instance v4, Lib/player/base/c;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lib/player/base/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lio/realm/y;->B(Lio/realm/x;)V

    goto :goto_3

    :cond_4
    iget-boolean v0, v2, Lib/player/base/k;->W:Z

    if-nez v0, :cond_5

    invoke-virtual {v2, p1}, Lib/player/base/k;->E(Ljava/util/List;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
