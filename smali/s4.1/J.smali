.class public final Ls4/J;
.super Lv1/y;


# instance fields
.field public final d:Z

.field public final e:Z

.field public final f:Lio/realm/S;

.field public g:Lio/realm/OrderedRealmCollection;

.field public final synthetic h:I

.field public i:Landroid/content/Context;

.field public j:I

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/realm/OrderedRealmCollection;I)V
    .locals 0

    iput p2, p0, Ls4/J;->h:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p1, p0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls4/J;->d:Z

    new-instance p2, Lio/realm/S;

    invoke-direct {p2, p0}, Lio/realm/S;-><init>(Ls4/J;)V

    iput-object p2, p0, Ls4/J;->f:Lio/realm/S;

    iput-boolean p1, p0, Ls4/J;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Ls4/J;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-boolean v0, p0, Ls4/J;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls4/J;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-virtual {p0, v0}, Ls4/J;->k(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    return-void
.end method

.method public final g(Lv1/X;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Ls4/J;->h:I

    packed-switch v2, :pswitch_data_0

    move-object/from16 v2, p1

    check-cast v2, Ls4/O;

    iget-object v3, v2, Ls4/O;->v:Landroid/widget/ImageView;

    iget-object v4, v2, Ls4/O;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Ls4/J;->l(I)Lio/realm/M;

    move-result-object v5

    check-cast v5, Lib/player/models/MovieModel;

    invoke-virtual {v5}, Lib/player/models/MovieModel;->isIs_favorite()Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v5}, Lib/player/models/MovieModel;->getPro()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lib/player/models/MovieModel;->getPro()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v9, v0, Ls4/J;->i:Landroid/content/Context;

    iget-object v10, v2, Ls4/O;->u:Landroid/widget/ImageView;

    iget-object v3, v2, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v5}, Lib/player/models/MovieModel;->getStreamIcon()Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0x3e8

    const/16 v16, 0x28

    const v12, 0x7f0801de

    const v13, 0x7f0801dd

    const/16 v14, 0x29e

    invoke-static/range {v9 .. v16}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    new-instance v4, LA4/l;

    const/16 v6, 0x12

    invoke-direct {v4, v0, v1, v5, v6}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Ls4/e;

    const/4 v6, 0x5

    invoke-direct {v4, v0, v2, v1, v6}, Ls4/e;-><init>(Lv1/y;Lv1/X;II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v2, Ls4/I;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v5, v1, v4}, Ls4/I;-><init>(Ls4/J;Lio/realm/O;II)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v2, v0, Ls4/J;->j:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void

    :pswitch_0
    move-object/from16 v2, p1

    check-cast v2, Ls4/O;

    iget-object v3, v2, Ls4/O;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ls4/J;->l(I)Lio/realm/M;

    move-result-object v4

    check-cast v4, Lib/player/models/SeriesModel;

    invoke-virtual {v4}, Lib/player/models/SeriesModel;->isIs_favorite()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v6, v0, Ls4/J;->i:Landroid/content/Context;

    iget-object v7, v2, Ls4/O;->u:Landroid/widget/ImageView;

    iget-object v3, v2, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v4}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x3e8

    const/16 v13, 0x28

    const v9, 0x7f0801de

    const v10, 0x7f0801dd

    const/16 v11, 0x29e

    invoke-static/range {v6 .. v13}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    new-instance v5, LA4/l;

    const/16 v6, 0x11

    invoke-direct {v5, v0, v1, v4, v6}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Ls4/e;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v2, v1, v6}, Ls4/e;-><init>(Lv1/y;Lv1/X;II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v2, Ls4/I;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v1, v5}, Ls4/I;-><init>(Ls4/J;Lio/realm/O;II)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v2, v0, Ls4/J;->j:I

    if-ne v2, v1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    iget p2, p0, Ls4/J;->h:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ls4/O;

    const v0, 0x7f0e0077

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/O;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_0
    new-instance p2, Ls4/O;

    const v0, 0x7f0e0077

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/O;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Ls4/J;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls4/J;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-virtual {p0, v0}, Ls4/J;->n(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    return-void
.end method

.method public final k(Lio/realm/OrderedRealmCollection;)V
    .locals 3

    instance-of v0, p1, Lio/realm/T;

    if-eqz v0, :cond_1

    check-cast p1, Lio/realm/T;

    iget-object v0, p1, Lio/realm/T;->b:Lio/realm/y;

    iget-object v1, p0, Ls4/J;->f:Lio/realm/S;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    const-string v2, "Listeners cannot be used on current thread."

    check-cast v0, LB0/i;

    invoke-virtual {v0, v2}, LB0/i;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsResults;->a(Lio/realm/T;Lio/realm/q;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RealmCollection not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(I)Lio/realm/M;
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls4/J;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/M;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only indexes >= 0 are allowed. Input was: "

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/realm/RealmCollection;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n(Lio/realm/OrderedRealmCollection;)V
    .locals 3

    instance-of v0, p1, Lio/realm/T;

    if-eqz v0, :cond_0

    check-cast p1, Lio/realm/T;

    const/4 v0, 0x1

    iget-object v1, p0, Ls4/J;->f:Lio/realm/S;

    invoke-virtual {p1, v1, v0}, Lio/realm/T;->c(Lio/realm/S;Z)V

    iget-object v0, p1, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsResults;->h(Lio/realm/T;Lio/realm/S;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RealmCollection not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
