.class public final Lib/player/base/j;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/base/k;


# direct methods
.method public native synthetic constructor <init>(Lib/player/base/k;I)V
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1

    iget p1, p0, Lib/player/base/j;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lib/player/base/j;->q:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_1

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->L()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lib/player/base/k;->F()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lib/player/base/j;->q:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_3

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-virtual {p1}, Lib/player/base/k;->P()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lib/player/base/k;->L()V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lib/player/base/j;->q:Lib/player/base/k;

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_5

    iget p2, p1, Lib/player/base/k;->X:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lib/player/base/k;->X:I

    invoke-static {p1}, Lib/player/base/k;->w(Lib/player/base/k;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lib/player/base/k;->P()V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 8

    iget p1, p0, Lib/player/base/j;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lib/player/base/j;->q:Lib/player/base/k;

    const/4 v0, 0x0

    iput v0, p1, Lib/player/base/k;->X:I

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lib/player/base/m;->r:Lib/player/base/m;

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2, v3}, Lib/player/models/CategoryModel;->setType(Lib/player/base/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lib/player/models/CategoryModel;

    iget-object v2, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getRecently_viewed()Ljava/lang/String;

    move-result-object v2

    const-string v4, "resume_id"

    invoke-direct {v1, v4, v2, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lib/player/models/CategoryModel;

    iget-object v1, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getAll()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_id"

    invoke-direct {v0, v2, v1, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lib/player/models/CategoryModel;

    iget-object v1, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fav_id"

    invoke-direct {v0, v2, v1, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    const/4 v1, 0x2

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p1, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v0, p2}, Lib/player/base/helper/w;->r0(Ljava/util/List;)V

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lib/player/base/k;->F()V

    :cond_2
    return-void

    :pswitch_0
    iget-object p1, p0, Lib/player/base/j;->q:Lib/player/base/k;

    const/4 v0, 0x0

    iput v0, p1, Lib/player/base/k;->X:I

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lib/player/base/m;->q:Lib/player/base/m;

    if-ge v1, v2, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2, v3}, Lib/player/models/CategoryModel;->setType(Lib/player/base/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Lib/player/models/CategoryModel;

    iget-object v2, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getResume_to_watch()Ljava/lang/String;

    move-result-object v2

    const-string v4, "resume_id"

    invoke-direct {v1, v4, v2, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lib/player/models/CategoryModel;

    iget-object v1, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getAll()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_id"

    invoke-direct {v0, v2, v1, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lib/player/models/CategoryModel;

    iget-object v1, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fav_id"

    invoke-direct {v0, v2, v1, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    const/4 v1, 0x2

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p1, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v0, p2}, Lib/player/base/helper/w;->v0(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CategoryModel;

    invoke-virtual {v0}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "xxx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "porn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_6
    sget-object v1, Lib/player/base/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lib/player/base/k;->L()V

    :cond_8
    return-void

    :pswitch_1
    iget-object p1, p0, Lib/player/base/j;->q:Lib/player/base/k;

    const/4 v0, 0x0

    iput v0, p1, Lib/player/base/k;->X:I

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_9

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    move v1, v0

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lib/player/base/m;->b:Lib/player/base/m;

    if-ge v1, v2, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2, v3}, Lib/player/models/CategoryModel;->setType(Lib/player/base/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    new-instance v1, Lib/player/models/CategoryModel;

    iget-object v2, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getRecently_viewed()Ljava/lang/String;

    move-result-object v2

    const-string v4, "resume_id"

    invoke-direct {v1, v4, v2, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Lib/player/models/CategoryModel;

    iget-object v2, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getAll()Ljava/lang/String;

    move-result-object v2

    const-string v4, "all_id"

    invoke-direct {v1, v4, v2, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    const/4 v2, 0x1

    invoke-interface {p2, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Lib/player/models/CategoryModel;

    iget-object v2, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fav_id"

    invoke-direct {v1, v4, v2, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    const/4 v2, 0x2

    invoke-interface {p2, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Lib/player/models/CategoryModel;

    iget-object v2, p1, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getLock()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lock_id"

    invoke-direct {v1, v4, v2, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    const/4 v2, 0x3

    invoke-interface {p2, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p1, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x1770

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    add-int/lit8 v4, v0, 0x5

    new-instance v5, Lib/player/models/CategoryModel;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7, v3}, Lib/player/models/CategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V

    invoke-interface {p2, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "xxx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "porn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_d
    sget-object v2, Lib/player/base/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v0, p1, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v0, p2}, Lib/player/base/helper/w;->m0(Ljava/util/List;)V

    iget-boolean p2, p1, Lib/player/base/k;->W:Z

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lib/player/base/k;->P()V

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
