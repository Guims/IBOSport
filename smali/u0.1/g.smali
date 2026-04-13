.class public final Lu0/g;
.super Ljava/lang/Object;

# interfaces
.implements Lu0/q;


# instance fields
.field public final b:Ljava/util/UUID;

.field public final c:Lq0/h;

.field public final d:Lu0/B;

.field public final e:Ljava/util/HashMap;

.field public final f:Z

.field public final g:[I

.field public final h:Z

.field public final i:Lp5/p;

.field public final j:LE0/j;

.field public final k:Lu0/d;

.field public final l:J

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/Set;

.field public final o:Ljava/util/Set;

.field public p:I

.field public q:Lu0/x;

.field public r:Lu0/c;

.field public s:Lu0/c;

.field public t:Landroid/os/Looper;

.field public u:Landroid/os/Handler;

.field public v:[B

.field public w:Lq0/q;

.field public volatile x:Lg4/P;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lu0/B;Ljava/util/HashMap;Z[IZLE0/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v1, v0}, Lk0/c;->c(Ljava/lang/String;Z)V

    iput-object p1, p0, Lu0/g;->b:Ljava/util/UUID;

    sget-object p1, Lu0/A;->d:Lq0/h;

    iput-object p1, p0, Lu0/g;->c:Lq0/h;

    iput-object p2, p0, Lu0/g;->d:Lu0/B;

    iput-object p3, p0, Lu0/g;->e:Ljava/util/HashMap;

    iput-boolean p4, p0, Lu0/g;->f:Z

    iput-object p5, p0, Lu0/g;->g:[I

    iput-boolean p6, p0, Lu0/g;->h:Z

    iput-object p7, p0, Lu0/g;->j:LE0/j;

    new-instance p1, Lp5/p;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lp5/p;-><init>(I)V

    iput-object p1, p0, Lu0/g;->i:Lp5/p;

    new-instance p1, Lu0/d;

    invoke-direct {p1, p0}, Lu0/d;-><init>(Lu0/g;)V

    iput-object p1, p0, Lu0/g;->k:Lu0/d;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu0/g;->m:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lu0/g;->n:Ljava/util/Set;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lu0/g;->o:Ljava/util/Set;

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lu0/g;->l:J

    return-void
.end method

.method public static f(Lu0/c;)Z
    .locals 2

    invoke-virtual {p0}, Lu0/c;->o()V

    iget v0, p0, Lu0/c;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu0/c;->g()Lu0/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Landroid/media/ResourceBusyException;

    if-nez v0, :cond_2

    invoke-static {p0}, Lu0/s;->c(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public static i(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, v2, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lu0/m;Landroidx/media3/common/Format;)Lu0/p;
    .locals 3

    iget v0, p0, Lu0/g;->p:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Lu0/g;->t:Landroid/os/Looper;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    new-instance v0, Lu0/f;

    invoke-direct {v0, p0, p1}, Lu0/f;-><init>(Lu0/g;Lu0/m;)V

    iget-object p1, p0, Lu0/g;->u:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LA/o;

    const/16 v2, 0x17

    invoke-direct {v1, v0, v2, p2}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final b(Lu0/m;Landroidx/media3/common/Format;)Lu0/j;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu0/g;->k(Z)V

    iget v1, p0, Lu0/g;->p:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Lu0/g;->t:Landroid/os/Looper;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lu0/g;->t:Landroid/os/Looper;

    invoke-virtual {p0, v0, p1, p2, v2}, Lu0/g;->e(Landroid/os/Looper;Lu0/m;Landroidx/media3/common/Format;Z)Lu0/j;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/os/Looper;Lq0/q;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu0/g;->t:Landroid/os/Looper;

    if-nez v0, :cond_0

    iput-object p1, p0, Lu0/g;->t:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lu0/g;->u:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->j(Z)V

    iget-object p1, p0, Lu0/g;->u:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    iput-object p2, p0, Lu0/g;->w:Lq0/q;

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Landroidx/media3/common/Format;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu0/g;->k(Z)V

    iget-object v1, p0, Lu0/g;->q:Lu0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lu0/x;->k()I

    move-result v1

    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez v2, :cond_3

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    sget v2, Lk0/C;->a:I

    move v2, v0

    :goto_0
    iget-object v3, p0, Lu0/g;->g:[I

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_1
    if-eq v2, v5, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lu0/g;->v:[B

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lu0/g;->b:Ljava/util/UUID;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lu0/g;->i(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v2, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ne v4, v3, :cond_8

    invoke-virtual {v2, v0}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v4, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultDrmSessionMgr"

    invoke-static {v0, p1}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, v2, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string v0, "cenc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p1, Lk0/C;->a:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_8

    goto :goto_2

    :cond_7
    const-string v0, "cbc1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    return v3

    :cond_9
    :goto_2
    return v1
.end method

.method public final e(Landroid/os/Looper;Lu0/m;Landroidx/media3/common/Format;Z)Lu0/j;
    .locals 7

    iget-object v0, p0, Lu0/g;->x:Lg4/P;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-instance v0, Lg4/P;

    invoke-direct {v0, p0, p1, v1}, Lg4/P;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p0, Lu0/g;->x:Lg4/P;

    :cond_0
    iget-object p1, p3, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_7

    iget-object p1, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lu0/g;->q:Lu0/x;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lu0/x;->k()I

    move-result p3

    if-ne p3, v1, :cond_1

    sget-boolean p3, Lu0/y;->c:Z

    if-eqz p3, :cond_1

    goto :goto_3

    :cond_1
    iget-object p3, p0, Lu0/g;->g:[I

    sget v1, Lk0/C;->a:I

    :goto_0
    array-length v1, p3

    const/4 v3, -0x1

    if-ge v0, v1, :cond_3

    aget v1, p3, v0

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_6

    invoke-interface {p2}, Lu0/x;->k()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lu0/g;->r:Lu0/c;

    if-nez p1, :cond_5

    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    invoke-virtual {p0, p1, p2, v2, p4}, Lu0/g;->h(Ljava/util/List;ZLu0/m;Z)Lu0/c;

    move-result-object p1

    iget-object p2, p0, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lu0/g;->r:Lu0/c;

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Lu0/c;->a(Lu0/m;)V

    :goto_2
    iget-object p1, p0, Lu0/g;->r:Lu0/c;

    return-object p1

    :cond_6
    :goto_3
    return-object v2

    :cond_7
    iget-object p3, p0, Lu0/g;->v:[B

    if-nez p3, :cond_9

    iget-object p3, p0, Lu0/g;->b:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Lu0/g;->i(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p1, Lu0/e;

    iget-object p3, p0, Lu0/g;->b:Ljava/util/UUID;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Media does not support uuid: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    invoke-static {p3, p4, p1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lu0/m;->d(Ljava/lang/Exception;)V

    :cond_8
    new-instance p2, Lu0/u;

    new-instance p3, Lu0/i;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, Lu0/i;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, Lu0/u;-><init>(Lu0/i;)V

    return-object p2

    :cond_9
    move-object p1, v2

    :cond_a
    iget-boolean p3, p0, Lu0/g;->f:Z

    if-nez p3, :cond_b

    iget-object v2, p0, Lu0/g;->s:Lu0/c;

    goto :goto_4

    :cond_b
    iget-object p3, p0, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    :cond_c
    if-ge v3, v1, :cond_d

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lu0/c;

    iget-object v5, v4, Lu0/c;->a:Ljava/util/List;

    sget v6, Lk0/C;->a:I

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object v2, v4

    :cond_d
    :goto_4
    if-nez v2, :cond_f

    invoke-virtual {p0, p1, v0, p2, p4}, Lu0/g;->h(Ljava/util/List;ZLu0/m;Z)Lu0/c;

    move-result-object p1

    iget-boolean p2, p0, Lu0/g;->f:Z

    if-nez p2, :cond_e

    iput-object p1, p0, Lu0/g;->s:Lu0/c;

    :cond_e
    iget-object p2, p0, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_f
    invoke-virtual {v2, p2}, Lu0/c;->a(Lu0/m;)V

    return-object v2
.end method

.method public final g(Ljava/util/List;ZLu0/m;)Lu0/c;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lu0/g;->q:Lu0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lu0/g;->h:Z

    or-int v8, v1, p2

    new-instance v2, Lu0/c;

    iget-object v4, v0, Lu0/g;->q:Lu0/x;

    iget-object v10, v0, Lu0/g;->v:[B

    iget-object v13, v0, Lu0/g;->t:Landroid/os/Looper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Lu0/g;->w:Lq0/q;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lu0/g;->b:Ljava/util/UUID;

    iget-object v5, v0, Lu0/g;->i:Lp5/p;

    iget-object v6, v0, Lu0/g;->k:Lu0/d;

    iget-object v11, v0, Lu0/g;->e:Ljava/util/HashMap;

    iget-object v12, v0, Lu0/g;->d:Lu0/B;

    iget-object v14, v0, Lu0/g;->j:LE0/j;

    move-object/from16 v7, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v15}, Lu0/c;-><init>(Ljava/util/UUID;Lu0/x;Lp5/p;Lu0/d;Ljava/util/List;ZZ[BLjava/util/HashMap;Lu0/B;Landroid/os/Looper;LE0/j;Lq0/q;)V

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Lu0/c;->a(Lu0/m;)V

    iget-wide v3, v0, Lu0/g;->l:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lu0/c;->a(Lu0/m;)V

    :cond_0
    return-object v2
.end method

.method public final h(Ljava/util/List;ZLu0/m;Z)Lu0/c;
    .locals 9

    invoke-virtual {p0, p1, p2, p3}, Lu0/g;->g(Ljava/util/List;ZLu0/m;)Lu0/c;

    move-result-object v0

    invoke-static {v0}, Lu0/g;->f(Lu0/c;)Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, p0, Lu0/g;->l:J

    const/4 v6, 0x0

    iget-object v7, p0, Lu0/g;->o:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v7}, Lp3/L;->j(Ljava/util/Collection;)Lp3/L;

    move-result-object v1

    invoke-virtual {v1}, Lp3/L;->l()Lp3/m0;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu0/j;

    invoke-interface {v8, v6}, Lu0/j;->b(Lu0/m;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Lu0/c;->b(Lu0/m;)V

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Lu0/c;->b(Lu0/m;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lu0/g;->g(Ljava/util/List;ZLu0/m;)Lu0/c;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lu0/g;->f(Lu0/c;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    iget-object p4, p0, Lu0/g;->n:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p4}, Lp3/L;->j(Ljava/util/Collection;)Lp3/L;

    move-result-object p4

    invoke-virtual {p4}, Lp3/L;->l()Lp3/m0;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/f;

    invoke-virtual {v1}, Lu0/f;->release()V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {v7}, Lp3/L;->j(Ljava/util/Collection;)Lp3/L;

    move-result-object p4

    invoke-virtual {p4}, Lp3/L;->l()Lp3/m0;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/j;

    invoke-interface {v1, v6}, Lu0/j;->b(Lu0/m;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p3}, Lu0/c;->b(Lu0/m;)V

    cmp-long p4, v4, v2

    if-eqz p4, :cond_5

    invoke-virtual {v0, v6}, Lu0/c;->b(Lu0/m;)V

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lu0/g;->g(Ljava/util/List;ZLu0/m;)Lu0/c;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lu0/g;->q:Lu0/x;

    if-eqz v0, :cond_0

    iget v0, p0, Lu0/g;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu0/g;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu0/g;->q:Lu0/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lu0/x;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu0/g;->q:Lu0/x;

    :cond_0
    return-void
.end method

.method public final k(Z)V
    .locals 2

    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lu0/g;->t:Landroid/os/Looper;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, v1, p1}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lu0/g;->t:Landroid/os/Looper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu0/g;->t:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, p1, v1}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final prepare()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu0/g;->k(Z)V

    iget v0, p0, Lu0/g;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lu0/g;->p:I

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lu0/g;->q:Lu0/x;

    if-nez v0, :cond_1

    iget-object v0, p0, Lu0/g;->b:Ljava/util/UUID;

    iget-object v1, p0, Lu0/g;->c:Lq0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Lu0/A;

    invoke-direct {v1, v0}, Lu0/A;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v2, Lu0/F;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, Lu0/F;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Lu0/F; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameworkMediaDrm"

    invoke-static {v1, v0}, Lk0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lu0/t;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v1, p0, Lu0/g;->q:Lu0/x;

    new-instance v0, Lu0/d;

    invoke-direct {v0, p0}, Lu0/d;-><init>(Lu0/g;)V

    invoke-interface {v1, v0}, Lu0/x;->d(Lu0/d;)V

    return-void

    :cond_1
    iget-wide v0, p0, Lu0/g;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu0/c;->a(Lu0/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    return-void
.end method

.method public final release()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu0/g;->k(Z)V

    iget v1, p0, Lu0/g;->p:I

    sub-int/2addr v1, v0

    iput v1, p0, Lu0/g;->p:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lu0/g;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu0/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lu0/c;->b(Lu0/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lu0/g;->n:Ljava/util/Set;

    invoke-static {v0}, Lp3/L;->j(Ljava/util/Collection;)Lp3/L;

    move-result-object v0

    invoke-virtual {v0}, Lp3/L;->l()Lp3/m0;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/f;

    invoke-virtual {v1}, Lu0/f;->release()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lu0/g;->j()V

    return-void
.end method
