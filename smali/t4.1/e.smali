.class public final Lt4/e;
.super Ljava/lang/Object;

# interfaces
.implements Lw0/p;
.implements Ly0/k;


# direct methods
.method public static b(LD5/g;)Landroid/media/MediaCodec;
    .locals 2

    iget-object p0, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast p0, Ly0/o;

    iget-object p0, p0, Ly0/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCodec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0
.end method


# virtual methods
.method public a(LD5/g;)Ly0/l;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lt4/e;->b(LD5/g;)Landroid/media/MediaCodec;

    move-result-object v0

    const-string v1, "configureCodec"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p1, LD5/g;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    if-nez v1, :cond_0

    iget-object v2, p1, LD5/g;->a:Ljava/lang/Object;

    check-cast v2, Ly0/o;

    iget-boolean v2, v2, Ly0/o;->h:Z

    if-eqz v2, :cond_0

    sget v2, Lk0/C;->a:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, LD5/g;->b:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaFormat;

    iget-object v4, p1, LD5/g;->e:Ljava/lang/Object;

    check-cast v4, Landroid/media/MediaCrypto;

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "startCodec"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v1, Lp5/p;

    iget-object p1, p1, LD5/g;->f:Ljava/lang/Object;

    check-cast p1, Lr0/C;

    invoke-direct {v1, v0, p1}, Lp5/p;-><init>(Landroid/media/MediaCodec;Lr0/C;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    throw p1
.end method

.method public c(Lt4/d;ILib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    :try_start_0
    const-string v0, "https://ibsmarterplayer.com/"

    invoke-static {v0}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v1

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-interface/range {v1 .. v9}, Lu4/a;->p(Ljava/lang/String;Lib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lt4/c;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lt4/c;-><init>(Lt4/e;Lt4/d;ILib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    move/from16 v4, p2

    invoke-interface {p1, v0, v4}, Lt4/d;->e(Lib/player/models/DataRequestBody;I)V

    return-void
.end method

.method public t(Lw0/l;Lw0/i;)LE0/u;
    .locals 1

    new-instance v0, Lw0/o;

    invoke-direct {v0, p1, p2}, Lw0/o;-><init>(Lw0/l;Lw0/i;)V

    return-object v0
.end method

.method public u()LE0/u;
    .locals 3

    new-instance v0, Lw0/o;

    sget-object v1, Lw0/l;->n:Lw0/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw0/o;-><init>(Lw0/l;Lw0/i;)V

    return-object v0
.end method
