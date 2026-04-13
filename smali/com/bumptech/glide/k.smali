.class public final Lcom/bumptech/glide/k;
.super LZ1/a;


# instance fields
.field public final H:Landroid/content/Context;

.field public final I:Lcom/bumptech/glide/m;

.field public final J:Ljava/lang/Class;

.field public final K:Lcom/bumptech/glide/e;

.field public L:Lcom/bumptech/glide/a;

.field public M:Ljava/lang/Object;

.field public N:Ljava/util/ArrayList;

.field public O:Lcom/bumptech/glide/k;

.field public P:Lcom/bumptech/glide/k;

.field public final Q:Z

.field public R:Z

.field public S:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ1/e;

    invoke-direct {v0}, LZ1/a;-><init>()V

    sget-object v1, LK1/m;->c:LK1/m;

    invoke-virtual {v0, v1}, LZ1/a;->d(LK1/m;)LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    invoke-virtual {v0}, LZ1/a;->k()LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    invoke-virtual {v0}, LZ1/a;->p()LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, LZ1/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/k;->Q:Z

    iput-object p2, p0, Lcom/bumptech/glide/k;->I:Lcom/bumptech/glide/m;

    iput-object p3, p0, Lcom/bumptech/glide/k;->J:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/k;->H:Landroid/content/Context;

    iget-object p4, p2, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/b;

    iget-object p4, p4, Lcom/bumptech/glide/b;->r:Lcom/bumptech/glide/e;

    iget-object p4, p4, Lcom/bumptech/glide/e;->f:Ln/e;

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Ln/e;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Landroidx/datastore/preferences/protobuf/a0;

    invoke-virtual {p4}, Landroidx/datastore/preferences/protobuf/a0;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/a;

    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    iget-object p1, p1, Lcom/bumptech/glide/b;->r:Lcom/bumptech/glide/e;

    iput-object p1, p0, Lcom/bumptech/glide/k;->K:Lcom/bumptech/glide/e;

    iget-object p1, p2, Lcom/bumptech/glide/m;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/bumptech/glide/k;->v()Lcom/bumptech/glide/k;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_4
    monitor-enter p2

    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/m;->y:LZ1/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/k;->w(LZ1/a;)Lcom/bumptech/glide/k;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final A(Landroid/widget/ImageView;)V
    .locals 4

    invoke-static {}, Ld2/n;->a()V

    invoke-static {p1}, Ld2/f;->b(Ljava/lang/Object;)V

    const/16 v0, 0x800

    iget v1, p0, LZ1/a;->b:I

    invoke-static {v1, v0}, LZ1/a;->g(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/j;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    sget-object v2, LR1/p;->c:LR1/p;

    new-instance v3, LR1/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3}, LZ1/a;->h(LR1/p;LR1/f;)LZ1/a;

    move-result-object v0

    iput-boolean v1, v0, LZ1/a;->F:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    sget-object v2, LR1/p;->b:LR1/p;

    new-instance v3, LR1/w;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3}, LZ1/a;->h(LR1/p;LR1/f;)LZ1/a;

    move-result-object v0

    iput-boolean v1, v0, LZ1/a;->F:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    sget-object v2, LR1/p;->c:LR1/p;

    new-instance v3, LR1/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3}, LZ1/a;->h(LR1/p;LR1/f;)LZ1/a;

    move-result-object v0

    iput-boolean v1, v0, LZ1/a;->F:Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    sget-object v1, LR1/p;->d:LR1/p;

    new-instance v2, LR1/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, LZ1/a;->h(LR1/p;LR1/f;)LZ1/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/k;->K:Lcom/bumptech/glide/e;

    iget-object v1, v1, Lcom/bumptech/glide/e;->c:Lu2/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bumptech/glide/k;->J:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, La2/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, La2/a;-><init>(Landroid/widget/ImageView;I)V

    goto :goto_2

    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, La2/a;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, La2/a;-><init>(Landroid/widget/ImageView;I)V

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/k;->z(La2/c;LZ1/a;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final B(Ljava/lang/Object;)Lcom/bumptech/glide/k;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->B(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/k;->M:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/k;->R:Z

    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final bridge synthetic a(LZ1/a;)LZ1/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/k;->w(LZ1/a;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b()LZ1/a;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bumptech/glide/k;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/k;

    invoke-super {p0, p1}, LZ1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/k;->J:Ljava/lang/Class;

    iget-object v1, p1, Lcom/bumptech/glide/k;->J:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    iget-object v1, p1, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/k;->M:Ljava/lang/Object;

    iget-object v1, p1, Lcom/bumptech/glide/k;->M:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    iget-object v1, p1, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    iget-object v1, p1, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/k;->Q:Z

    iget-boolean v1, p1, Lcom/bumptech/glide/k;->Q:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/k;->R:Z

    iget-boolean p1, p1, Lcom/bumptech/glide/k;->R:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, LZ1/a;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/k;->J:Ljava/lang/Class;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/k;->M:Ljava/lang/Object;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld2/n;->h(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/k;->Q:Z

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/k;->R:Z

    invoke-static {v1, v0}, Ld2/n;->g(II)I

    move-result v0

    return v0
.end method

.method public final v()Lcom/bumptech/glide/k;
    .locals 1

    iget-boolean v0, p0, LZ1/a;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/k;->v()Lcom/bumptech/glide/k;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LZ1/a;->m()V

    return-object p0
.end method

.method public final w(LZ1/a;)Lcom/bumptech/glide/k;
    .locals 0

    invoke-static {p1}, Ld2/f;->b(Ljava/lang/Object;)V

    invoke-super {p0, p1}, LZ1/a;->a(LZ1/a;)LZ1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/k;

    return-object p1
.end method

.method public final x(Ljava/lang/Object;La2/c;LZ1/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/g;IILZ1/a;)LZ1/c;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v7, p8

    iget-object v3, v0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    if-eqz v3, :cond_0

    new-instance v3, LZ1/b;

    move-object/from16 v4, p3

    invoke-direct {v3, v2, v4}, LZ1/b;-><init>(Ljava/lang/Object;LZ1/d;)V

    move-object v13, v3

    move-object/from16 v16, v13

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    const/4 v3, 0x0

    move-object/from16 v16, v3

    move-object v13, v4

    :goto_0
    iget-object v3, v0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    if-eqz v3, :cond_8

    iget-boolean v4, v0, Lcom/bumptech/glide/k;->S:Z

    if-nez v4, :cond_7

    iget-object v4, v3, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    iget-boolean v5, v3, Lcom/bumptech/glide/k;->Q:Z

    if-eqz v5, :cond_1

    move-object/from16 v17, v1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v4

    :goto_1
    const/16 v4, 0x8

    iget v3, v3, LZ1/a;->b:I

    invoke-static {v3, v4}, LZ1/a;->g(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    iget-object v3, v3, LZ1/a;->r:Lcom/bumptech/glide/g;

    :goto_2
    move-object/from16 v18, v3

    goto :goto_3

    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/bumptech/glide/g;->r:Lcom/bumptech/glide/g;

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, LZ1/a;->r:Lcom/bumptech/glide/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-object v3, Lcom/bumptech/glide/g;->q:Lcom/bumptech/glide/g;

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/g;

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    iget v5, v3, LZ1/a;->w:I

    iget v3, v3, LZ1/a;->v:I

    invoke-static/range {p6 .. p7}, Ld2/n;->i(II)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    iget v8, v6, LZ1/a;->w:I

    iget v6, v6, LZ1/a;->v:I

    invoke-static {v8, v6}, Ld2/n;->i(II)Z

    move-result v6

    if-nez v6, :cond_6

    iget v5, v7, LZ1/a;->w:I

    iget v3, v7, LZ1/a;->v:I

    :cond_6
    move/from16 v19, v3

    move/from16 v20, v5

    new-instance v3, LZ1/g;

    invoke-direct {v3, v2, v13}, LZ1/g;-><init>(Ljava/lang/Object;LZ1/d;)V

    iget-object v2, v0, Lcom/bumptech/glide/k;->H:Landroid/content/Context;

    move-object v13, v3

    iget-object v3, v0, Lcom/bumptech/glide/k;->K:Lcom/bumptech/glide/e;

    iget-object v5, v0, Lcom/bumptech/glide/k;->M:Ljava/lang/Object;

    iget-object v6, v0, Lcom/bumptech/glide/k;->J:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    iget-object v14, v3, Lcom/bumptech/glide/e;->g:LK1/o;

    iget-object v15, v1, Lcom/bumptech/glide/a;->b:Lb2/a;

    new-instance v1, LZ1/f;

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v15}, LZ1/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LZ1/a;IILcom/bumptech/glide/g;La2/c;Ljava/util/ArrayList;LZ1/d;LK1/o;Lb2/a;)V

    move-object v10, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/k;->S:Z

    iget-object v1, v0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    move-object v9, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v8, v19

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;La2/c;LZ1/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/g;IILZ1/a;)LZ1/c;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bumptech/glide/k;->S:Z

    iput-object v10, v13, LZ1/g;->c:LZ1/f;

    iput-object v1, v13, LZ1/g;->d:LZ1/c;

    move-object/from16 v7, p8

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget-object v2, v0, Lcom/bumptech/glide/k;->H:Landroid/content/Context;

    iget-object v3, v0, Lcom/bumptech/glide/k;->K:Lcom/bumptech/glide/e;

    iget-object v5, v0, Lcom/bumptech/glide/k;->M:Ljava/lang/Object;

    iget-object v6, v0, Lcom/bumptech/glide/k;->J:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    iget-object v14, v3, Lcom/bumptech/glide/e;->g:LK1/o;

    iget-object v15, v1, Lcom/bumptech/glide/a;->b:Lb2/a;

    new-instance v1, LZ1/f;

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v15}, LZ1/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LZ1/a;IILcom/bumptech/glide/g;La2/c;Ljava/util/ArrayList;LZ1/d;LK1/o;Lb2/a;)V

    move-object v13, v1

    :goto_4
    if-nez v16, :cond_9

    return-object v13

    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    iget v2, v1, LZ1/a;->w:I

    iget v1, v1, LZ1/a;->v:I

    invoke-static/range {p6 .. p7}, Ld2/n;->i(II)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    iget v4, v3, LZ1/a;->w:I

    iget v3, v3, LZ1/a;->v:I

    invoke-static {v4, v3}, Ld2/n;->i(II)Z

    move-result v3

    if-nez v3, :cond_a

    iget v2, v7, LZ1/a;->w:I

    iget v1, v7, LZ1/a;->v:I

    :cond_a
    move v8, v1

    move v7, v2

    iget-object v1, v0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    iget-object v5, v1, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    iget-object v6, v1, LZ1/a;->r:Lcom/bumptech/glide/g;

    move-object v9, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;La2/c;LZ1/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/g;IILZ1/a;)LZ1/c;

    move-result-object v1

    iput-object v13, v4, LZ1/b;->c:LZ1/c;

    iput-object v1, v4, LZ1/b;->d:LZ1/c;

    return-object v4
.end method

.method public final y()Lcom/bumptech/glide/k;
    .locals 3

    invoke-super {p0}, LZ1/a;->b()LZ1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    iget-object v1, v0, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    invoke-virtual {v1}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    iget-object v1, v0, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/k;->N:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/k;->O:Lcom/bumptech/glide/k;

    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bumptech/glide/k;->y()Lcom/bumptech/glide/k;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/k;->P:Lcom/bumptech/glide/k;

    :cond_2
    return-object v0
.end method

.method public final z(La2/c;LZ1/a;)V
    .locals 10

    invoke-static {p1}, Ld2/f;->b(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/bumptech/glide/k;->R:Z

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/bumptech/glide/k;->L:Lcom/bumptech/glide/a;

    iget-object v6, p2, LZ1/a;->r:Lcom/bumptech/glide/g;

    iget v7, p2, LZ1/a;->w:I

    iget v8, p2, LZ1/a;->v:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;La2/c;LZ1/d;Lcom/bumptech/glide/a;Lcom/bumptech/glide/g;IILZ1/a;)LZ1/c;

    move-result-object p1

    invoke-interface {v3}, La2/c;->i()LZ1/c;

    move-result-object p2

    invoke-interface {p1, p2}, LZ1/c;->g(LZ1/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v9, LZ1/a;->u:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, LZ1/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, LZ1/c;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, LZ1/c;->i()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p2, v1, Lcom/bumptech/glide/k;->I:Lcom/bumptech/glide/m;

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/m;->l(La2/c;)V

    invoke-interface {v3, p1}, La2/c;->a(LZ1/c;)V

    iget-object p2, v1, Lcom/bumptech/glide/k;->I:Lcom/bumptech/glide/m;

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/bumptech/glide/m;->s:Lcom/bumptech/glide/manager/r;

    const-string v2, "RequestTracker"

    iget-object v3, v0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/bumptech/glide/manager/r;->q:Z

    if-nez v3, :cond_3

    invoke-interface {p1}, LZ1/c;->i()V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, LZ1/c;->clear()V

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Paused, delaying request"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    move-object v1, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
