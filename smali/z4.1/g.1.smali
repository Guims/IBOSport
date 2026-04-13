.class public final synthetic Lz4/g;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/h;

.field public final synthetic r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic s:I

.field public final synthetic t:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lz4/h;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;I)V
    .locals 0

    iput p5, p0, Lz4/g;->b:I

    iput-object p1, p0, Lz4/g;->q:Lz4/h;

    iput-object p2, p0, Lz4/g;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lz4/g;->s:I

    iput-object p4, p0, Lz4/g;->t:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lz4/g;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lz4/g;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget v2, v0, Lz4/g;->s:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lz4/g;->q:Lz4/h;

    iget-object v2, v1, Lz4/h;->M0:Lib/player/base/helper/w;

    iget-object v3, v0, Lz4/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lib/player/base/helper/w;->p0(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lz4/g;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget v2, v0, Lz4/g;->s:I

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lz4/g;->q:Lz4/h;

    iget-object v2, v1, Lz4/h;->M0:Lib/player/base/helper/w;

    iget-object v3, v0, Lz4/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lib/player/base/helper/w;->q0(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v1, v0, Lz4/g;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget v2, v0, Lz4/g;->s:I

    if-ne v1, v2, :cond_3

    iget-object v7, v0, Lz4/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v4, v0, Lz4/g;->q:Lz4/h;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lib/player/models/ResumeModel;

    iget-object v8, v4, Lz4/h;->z0:Landroid/content/Context;

    invoke-static {v8}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v9

    invoke-virtual {v3}, Lib/player/models/ResumeModel;->getStream_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lib/player/models/ResumeModel;->getTmdb_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lib/player/models/ResumeModel;->getLast_position()J

    move-result-wide v13

    invoke-virtual {v3}, Lib/player/models/ResumeModel;->getPro()I

    move-result v15

    new-instance v16, Lz4/g;

    const/4 v8, 0x2

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v8}, Lz4/g;-><init>(Lz4/h;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;I)V

    const/4 v12, 0x1

    invoke-virtual/range {v9 .. v16}, Lib/player/base/helper/w;->a(Ljava/lang/String;Ljava/lang/String;ZJILib/player/base/helper/x;)V

    goto :goto_0

    :cond_2
    iget-object v1, v4, Lz4/h;->M0:Lib/player/base/helper/w;

    invoke-virtual {v1, v7}, Lib/player/base/helper/w;->q0(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_3
    return-void

    :pswitch_2
    iget-object v1, v0, Lz4/g;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget v2, v0, Lz4/g;->s:I

    if-ne v1, v2, :cond_5

    iget-object v7, v0, Lz4/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v4, v0, Lz4/g;->q:Lz4/h;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lib/player/models/ResumeSeriesModel;

    iget-object v8, v4, Lz4/h;->z0:Landroid/content/Context;

    invoke-static {v8}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v9

    invoke-virtual {v3}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lib/player/models/ResumeSeriesModel;->getSeason_pos()I

    move-result v12

    invoke-virtual {v3}, Lib/player/models/ResumeSeriesModel;->getEpisode_pos()I

    move-result v13

    new-instance v3, Lz4/g;

    const/4 v8, 0x3

    invoke-direct/range {v3 .. v8}, Lz4/g;-><init>(Lz4/h;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;I)V

    const/4 v11, 0x1

    move-object v14, v3

    invoke-virtual/range {v9 .. v14}, Lib/player/base/helper/w;->e(Ljava/lang/String;ZIILib/player/base/helper/x;)V

    goto :goto_1

    :cond_4
    iget-object v1, v4, Lz4/h;->M0:Lib/player/base/helper/w;

    invoke-virtual {v1, v7}, Lib/player/base/helper/w;->p0(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
