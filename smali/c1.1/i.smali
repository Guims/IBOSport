.class public final Lc1/i;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# static fields
.field public static final L:[B

.field public static final M:Landroidx/media3/common/Format;


# instance fields
.field public A:J

.field public B:Lc1/h;

.field public C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:Z

.field public H:LI0/s;

.field public I:[LI0/L;

.field public J:[LI0/L;

.field public K:Z

.field public final a:Lf1/k;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Lk0/u;

.field public final f:Lk0/u;

.field public final g:Lk0/u;

.field public final h:[B

.field public final i:Lk0/u;

.field public final j:Lk0/z;

.field public final k:LA/j;

.field public final l:Lk0/u;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Ljava/util/ArrayDeque;

.field public final o:LA5/t;

.field public final p:LI0/L;

.field public q:Lp3/Y;

.field public r:I

.field public s:I

.field public t:J

.field public u:I

.field public v:Lk0/u;

.field public w:J

.field public x:I

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc1/i;->L:[B

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Lc1/i;->M:Landroidx/media3/common/Format;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Lf1/k;I)V
    .locals 7

    sget-object v0, Lp3/H;->q:Lp3/F;

    sget-object v5, Lp3/Y;->t:Lp3/Y;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lc1/i;-><init>(Lf1/k;ILk0/z;Ljava/util/List;Ls0/q;)V

    return-void
.end method

.method public constructor <init>(Lf1/k;ILk0/z;Ljava/util/List;Ls0/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/i;->a:Lf1/k;

    iput p2, p0, Lc1/i;->b:I

    iput-object p3, p0, Lc1/i;->j:Lk0/z;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc1/i;->c:Ljava/util/List;

    iput-object p5, p0, Lc1/i;->p:LI0/L;

    new-instance p1, LA/j;

    const/16 p2, 0x1b

    invoke-direct {p1, p2}, LA/j;-><init>(I)V

    iput-object p1, p0, Lc1/i;->k:LA/j;

    new-instance p1, Lk0/u;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lc1/i;->l:Lk0/u;

    new-instance p1, Lk0/u;

    sget-object p3, Ll0/n;->a:[B

    invoke-direct {p1, p3}, Lk0/u;-><init>([B)V

    iput-object p1, p0, Lc1/i;->e:Lk0/u;

    new-instance p1, Lk0/u;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lc1/i;->f:Lk0/u;

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, Lc1/i;->g:Lk0/u;

    new-array p1, p2, [B

    iput-object p1, p0, Lc1/i;->h:[B

    new-instance p2, Lk0/u;

    invoke-direct {p2, p1}, Lk0/u;-><init>([B)V

    iput-object p2, p0, Lc1/i;->i:Lk0/u;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lc1/i;->m:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lc1/i;->n:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc1/i;->d:Landroid/util/SparseArray;

    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    iput-object p1, p0, Lc1/i;->q:Lp3/Y;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lc1/i;->z:J

    iput-wide p1, p0, Lc1/i;->y:J

    iput-wide p1, p0, Lc1/i;->A:J

    sget-object p1, LI0/s;->f:Lu2/j;

    iput-object p1, p0, Lc1/i;->H:LI0/s;

    const/4 p1, 0x0

    new-array p2, p1, [LI0/L;

    iput-object p2, p0, Lc1/i;->I:[LI0/L;

    new-array p1, p1, [LI0/L;

    iput-object p1, p0, Lc1/i;->J:[LI0/L;

    new-instance p1, LA5/t;

    new-instance p2, Lc1/f;

    invoke-direct {p2, p0}, Lc1/f;-><init>(Lc1/i;)V

    invoke-direct {p1, p2}, LA5/t;-><init>(Ll0/p;)V

    iput-object p1, p0, Lc1/i;->o:LA5/t;

    return-void
.end method

.method public static a(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/c;

    iget v5, v4, LU2/e;->q:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v4, Ll0/c;->r:Lk0/u;

    iget-object v4, v4, Lk0/u;->a:[B

    invoke-static {v4}, Lc1/p;->c([B)LA/d;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    iget-object v5, v5, LA/d;->r:Ljava/lang/Object;

    check-cast v5, Ljava/util/UUID;

    :goto_1
    if-nez v5, :cond_2

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    return-object v1

    :cond_5
    new-instance p0, Landroidx/media3/common/DrmInitData;

    invoke-direct {p0, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static c(Lk0/u;ILc1/s;)V
    .locals 5

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lk0/u;->G(I)V

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result p1

    sget-object v0, Lc1/d;->a:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Lk0/u;->y()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p2, Lc1/s;->l:[Z

    iget p1, p2, Lc1/s;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v3, p2, Lc1/s;->e:I

    iget-object v4, p2, Lc1/s;->n:Lk0/u;

    if-ne v2, v3, :cond_2

    iget-object v3, p2, Lc1/s;->l:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lk0/u;->a()I

    move-result p1

    invoke-virtual {v4, p1}, Lk0/u;->D(I)V

    iput-boolean v1, p2, Lc1/s;->k:Z

    iput-boolean v1, p2, Lc1/s;->o:Z

    iget-object p1, v4, Lk0/u;->a:[B

    iget v1, v4, Lk0/u;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lk0/u;->e([BII)V

    invoke-virtual {v4, v0}, Lk0/u;->G(I)V

    iput-boolean v0, p2, Lc1/s;->o:Z

    return-void

    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    invoke-static {p0, v2, p1}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Lc1/s;->e:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lc1/p;->e(LI0/r;ZZ)LI0/J;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lp3/H;->q:Lp3/F;

    sget-object v2, Lp3/Y;->t:Lp3/Y;

    :goto_0
    iput-object v2, p0, Lc1/i;->q:Lp3/Y;

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final d(J)V
    .locals 51

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lc1/i;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/b;

    iget-wide v4, v2, Ll0/b;->r:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_57

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ll0/b;

    iget v2, v4, LU2/e;->q:I

    iget-object v5, v4, Ll0/b;->t:Ljava/util/ArrayList;

    iget-object v6, v4, Ll0/b;->s:Ljava/util/ArrayList;

    const v7, 0x6d6f6f76

    iget v8, v0, Lc1/i;->b:I

    const/16 v10, 0xc

    iget-object v15, v0, Lc1/i;->d:Landroid/util/SparseArray;

    if-ne v2, v7, :cond_b

    move v7, v8

    invoke-static {v6}, Lc1/i;->a(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v8

    const v1, 0x6d766578

    invoke-virtual {v4, v1}, Ll0/b;->k(I)Ll0/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, v1, Ll0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll0/c;

    iget v3, v11, LU2/e;->q:I

    iget-object v11, v11, Ll0/c;->r:Lk0/u;

    const/16 v17, 0x1

    const v12, 0x74726578

    if-ne v3, v12, :cond_1

    invoke-virtual {v11, v10}, Lk0/u;->G(I)V

    invoke-virtual {v11}, Lk0/u;->g()I

    move-result v3

    invoke-virtual {v11}, Lk0/u;->g()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11}, Lk0/u;->g()I

    move-result v10

    invoke-virtual {v11}, Lk0/u;->g()I

    move-result v9

    invoke-virtual {v11}, Lk0/u;->g()I

    move-result v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v18, v1

    new-instance v1, Lc1/e;

    invoke-direct {v1, v12, v10, v9, v11}, Lc1/e;-><init>(IIII)V

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lc1/e;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    move-object/from16 v18, v1

    const v1, 0x6d656864

    if-ne v3, v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Lk0/u;->G(I)V

    invoke-virtual {v11}, Lk0/u;->g()I

    move-result v1

    invoke-static {v1}, Lc1/d;->d(I)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v11}, Lk0/u;->w()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Lk0/u;->z()J

    move-result-wide v9

    :goto_2
    move-wide v13, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    const/16 v10, 0xc

    goto :goto_1

    :cond_4
    const/16 v17, 0x1

    new-instance v5, LI0/y;

    invoke-direct {v5}, LI0/y;-><init>()V

    and-int/lit8 v1, v7, 0x10

    if-eqz v1, :cond_5

    move/from16 v9, v17

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    new-instance v11, Lc1/f;

    invoke-direct {v11, v0}, Lc1/f;-><init>(Lc1/i;)V

    const/4 v10, 0x0

    move-wide v6, v13

    invoke-static/range {v4 .. v11}, Lc1/d;->h(Ll0/b;LI0/y;JLandroidx/media3/common/DrmInitData;ZZLo3/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc1/t;

    iget-object v6, v5, Lc1/t;->a:Lc1/q;

    new-instance v7, Lc1/h;

    iget-object v8, v0, Lc1/i;->H:LI0/s;

    iget v9, v6, Lc1/q;->b:I

    iget v10, v6, Lc1/q;->a:I

    invoke-interface {v8, v4, v9}, LI0/s;->track(II)LI0/L;

    move-result-object v8

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v9

    move/from16 v11, v17

    if-ne v9, v11, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc1/e;

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lc1/e;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    invoke-direct {v7, v8, v5, v11}, Lc1/h;-><init>(LI0/L;Lc1/t;Lc1/e;)V

    invoke-virtual {v15, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v7, v0, Lc1/i;->z:J

    iget-wide v5, v6, Lc1/q;->e:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lc1/i;->z:J

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x1

    goto :goto_5

    :cond_7
    iget-object v1, v0, Lc1/i;->H:LI0/s;

    invoke-interface {v1}, LI0/s;->endTracks()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lk0/c;->j(Z)V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc1/t;

    iget-object v6, v5, Lc1/t;->a:Lc1/q;

    iget v7, v6, Lc1/q;->a:I

    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc1/h;

    iget v6, v6, Lc1/q;->a:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_a

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc1/e;

    goto :goto_9

    :cond_a
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc1/e;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    iput-object v5, v7, Lc1/h;->d:Lc1/t;

    iput-object v6, v7, Lc1/h;->e:Lc1/e;

    iget-object v6, v7, Lc1/h;->a:LI0/L;

    iget-object v5, v5, Lc1/t;->a:Lc1/q;

    iget-object v5, v5, Lc1/q;->g:Landroidx/media3/common/Format;

    invoke-interface {v6, v5}, LI0/L;->format(Landroidx/media3/common/Format;)V

    invoke-virtual {v7}, Lc1/h;->e()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    move v7, v8

    const v3, 0x6d6f6f66

    if-ne v2, v3, :cond_56

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v1, :cond_50

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/b;

    iget v4, v3, LU2/e;->q:I

    const v8, 0x74726166

    if-ne v4, v8, :cond_4f

    const v4, 0x74666864

    invoke-virtual {v3, v4}, Ll0/b;->l(I)Ll0/c;

    move-result-object v4

    iget-object v8, v3, Ll0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Ll0/c;->r:Lk0/u;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v10

    sget-object v11, Lc1/d;->a:[B

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc1/h;

    if-nez v11, :cond_c

    move/from16 v21, v1

    const/4 v11, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_10

    :cond_c
    iget-object v12, v11, Lc1/h;->b:Lc1/s;

    and-int/lit8 v18, v10, 0x1

    if-eqz v18, :cond_d

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v4}, Lk0/u;->z()J

    move-result-wide v13

    iput-wide v13, v12, Lc1/s;->b:J

    iput-wide v13, v12, Lc1/s;->c:J

    goto :goto_b

    :cond_d
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_b
    iget-object v13, v11, Lc1/h;->e:Lc1/e;

    and-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_e

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_c

    :cond_e
    iget v14, v13, Lc1/e;->a:I

    :goto_c
    and-int/lit8 v20, v10, 0x8

    if-eqz v20, :cond_f

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v20

    move/from16 v2, v20

    goto :goto_d

    :cond_f
    iget v2, v13, Lc1/e;->b:I

    :goto_d
    and-int/lit8 v21, v10, 0x10

    if-eqz v21, :cond_10

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v21

    move/from16 v50, v21

    move/from16 v21, v1

    move/from16 v1, v50

    goto :goto_e

    :cond_10
    move/from16 v21, v1

    iget v1, v13, Lc1/e;->c:I

    :goto_e
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_11

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v4

    goto :goto_f

    :cond_11
    iget v4, v13, Lc1/e;->d:I

    :goto_f
    new-instance v10, Lc1/e;

    invoke-direct {v10, v14, v2, v1, v4}, Lc1/e;-><init>(IIII)V

    iput-object v10, v12, Lc1/s;->a:Lc1/e;

    :goto_10
    if-nez v11, :cond_13

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v46, v9

    const/4 v11, 0x1

    const/16 v13, 0xc

    :cond_12
    const/16 v10, 0x8

    goto/16 :goto_37

    :cond_13
    iget-object v1, v11, Lc1/h;->b:Lc1/s;

    iget-wide v12, v1, Lc1/s;->p:J

    iget-boolean v2, v1, Lc1/s;->q:Z

    invoke-virtual {v11}, Lc1/h;->e()V

    const/4 v4, 0x1

    iput-boolean v4, v11, Lc1/h;->l:Z

    const v10, 0x74666474

    invoke-virtual {v3, v10}, Ll0/b;->l(I)Ll0/c;

    move-result-object v10

    if-eqz v10, :cond_15

    and-int/lit8 v14, v7, 0x2

    if-nez v14, :cond_15

    iget-object v2, v10, Ll0/c;->r:Lk0/u;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v10

    invoke-static {v10}, Lc1/d;->d(I)I

    move-result v10

    if-ne v10, v4, :cond_14

    invoke-virtual {v2}, Lk0/u;->z()J

    move-result-wide v12

    goto :goto_11

    :cond_14
    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v12

    :goto_11
    iput-wide v12, v1, Lc1/s;->p:J

    iput-boolean v4, v1, Lc1/s;->q:Z

    goto :goto_12

    :cond_15
    iput-wide v12, v1, Lc1/s;->p:J

    iput-boolean v2, v1, Lc1/s;->q:Z

    :goto_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_13
    const v13, 0x7472756e

    if-ge v4, v2, :cond_17

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ll0/c;

    move/from16 v22, v4

    iget v4, v14, LU2/e;->q:I

    if-ne v4, v13, :cond_16

    iget-object v4, v14, Ll0/c;->r:Lk0/u;

    const/16 v13, 0xc

    invoke-virtual {v4, v13}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->y()I

    move-result v4

    if-lez v4, :cond_16

    add-int/2addr v12, v4

    add-int/lit8 v10, v10, 0x1

    :cond_16
    add-int/lit8 v4, v22, 0x1

    goto :goto_13

    :cond_17
    const/4 v4, 0x0

    iput v4, v11, Lc1/h;->h:I

    iput v4, v11, Lc1/h;->g:I

    iput v4, v11, Lc1/h;->f:I

    iput v10, v1, Lc1/s;->d:I

    iput v12, v1, Lc1/s;->e:I

    iget-object v4, v1, Lc1/s;->g:[I

    array-length v4, v4

    if-ge v4, v10, :cond_18

    new-array v4, v10, [J

    iput-object v4, v1, Lc1/s;->f:[J

    new-array v4, v10, [I

    iput-object v4, v1, Lc1/s;->g:[I

    :cond_18
    iget-object v4, v1, Lc1/s;->h:[I

    array-length v4, v4

    if-ge v4, v12, :cond_19

    mul-int/lit8 v12, v12, 0x7d

    div-int/lit8 v12, v12, 0x64

    new-array v4, v12, [I

    iput-object v4, v1, Lc1/s;->h:[I

    new-array v4, v12, [J

    iput-object v4, v1, Lc1/s;->i:[J

    new-array v4, v12, [Z

    iput-object v4, v1, Lc1/s;->j:[Z

    new-array v4, v12, [Z

    iput-object v4, v1, Lc1/s;->l:[Z

    :cond_19
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_14
    const-wide/16 v22, 0x0

    const/16 v24, 0x10

    if-ge v4, v2, :cond_31

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v14, v25

    check-cast v14, Ll0/c;

    move/from16 v25, v2

    iget v2, v14, LU2/e;->q:I

    if-ne v2, v13, :cond_30

    add-int/lit8 v2, v10, 0x1

    iget-object v14, v14, Ll0/c;->r:Lk0/u;

    const/16 v13, 0x8

    invoke-virtual {v14, v13}, Lk0/u;->G(I)V

    invoke-virtual {v14}, Lk0/u;->g()I

    move-result v13

    sget-object v27, Lc1/d;->a:[B

    move/from16 v27, v2

    iget-object v2, v11, Lc1/h;->d:Lc1/t;

    iget-object v2, v2, Lc1/t;->a:Lc1/q;

    move/from16 v28, v4

    iget-object v4, v1, Lc1/s;->a:Lc1/e;

    sget v29, Lk0/C;->a:I

    move-object/from16 v29, v5

    iget-object v5, v1, Lc1/s;->g:[I

    invoke-virtual {v14}, Lk0/u;->y()I

    move-result v30

    aput v30, v5, v10

    iget-object v5, v1, Lc1/s;->f:[J

    move-object/from16 v31, v5

    move-object/from16 v30, v6

    iget-wide v5, v1, Lc1/s;->b:J

    aput-wide v5, v31, v10

    and-int/lit8 v32, v13, 0x1

    if-eqz v32, :cond_1a

    move-wide/from16 v32, v5

    invoke-virtual {v14}, Lk0/u;->g()I

    move-result v5

    int-to-long v5, v5

    add-long v5, v32, v5

    aput-wide v5, v31, v10

    :cond_1a
    and-int/lit8 v5, v13, 0x4

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_15

    :cond_1b
    const/4 v5, 0x0

    :goto_15
    iget v6, v4, Lc1/e;->d:I

    if-eqz v5, :cond_1c

    invoke-virtual {v14}, Lk0/u;->g()I

    move-result v6

    :cond_1c
    move/from16 v31, v5

    and-int/lit16 v5, v13, 0x100

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_16

    :cond_1d
    const/4 v5, 0x0

    :goto_16
    move/from16 v32, v5

    and-int/lit16 v5, v13, 0x200

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    goto :goto_17

    :cond_1e
    const/4 v5, 0x0

    :goto_17
    move/from16 v33, v5

    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_18

    :cond_1f
    const/4 v5, 0x0

    :goto_18
    and-int/lit16 v13, v13, 0x800

    if-eqz v13, :cond_20

    const/4 v13, 0x1

    :goto_19
    move/from16 v34, v5

    goto :goto_1a

    :cond_20
    const/4 v13, 0x0

    goto :goto_19

    :goto_1a
    iget-object v5, v2, Lc1/q;->i:[J

    move/from16 v35, v6

    iget-object v6, v2, Lc1/q;->j:[J

    if-eqz v5, :cond_23

    move-object/from16 v36, v6

    array-length v6, v5

    move-object/from16 v37, v5

    const/4 v5, 0x1

    if-ne v6, v5, :cond_23

    if-nez v36, :cond_21

    goto :goto_1c

    :cond_21
    const/16 v16, 0x0

    aget-wide v38, v37, v16

    cmp-long v5, v38, v22

    if-nez v5, :cond_22

    goto :goto_1b

    :cond_22
    iget-wide v5, v2, Lc1/q;->d:J

    sget-object v44, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v40, 0xf4240

    move-wide/from16 v42, v5

    invoke-static/range {v38 .. v44}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aget-wide v40, v36, v16

    const-wide/32 v42, 0xf4240

    move-wide/from16 v37, v5

    iget-wide v5, v2, Lc1/q;->c:J

    move-object/from16 v46, v44

    move-wide/from16 v44, v5

    invoke-static/range {v40 .. v46}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    add-long v5, v37, v5

    move-wide/from16 v37, v5

    iget-wide v5, v2, Lc1/q;->e:J

    cmp-long v5, v37, v5

    if-ltz v5, :cond_23

    :goto_1b
    aget-wide v22, v36, v16

    :cond_23
    :goto_1c
    iget-object v5, v1, Lc1/s;->h:[I

    iget-object v6, v1, Lc1/s;->i:[J

    move-object/from16 v36, v5

    iget-object v5, v1, Lc1/s;->j:[Z

    move-object/from16 v37, v5

    iget v5, v2, Lc1/q;->b:I

    move-object/from16 v38, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_1d

    :cond_24
    const/4 v5, 0x0

    :goto_1d
    iget-object v6, v1, Lc1/s;->g:[I

    aget v6, v6, v10

    add-int/2addr v6, v12

    move/from16 v46, v9

    iget-wide v9, v2, Lc1/q;->c:J

    move-wide/from16 v43, v9

    iget-wide v9, v1, Lc1/s;->p:J

    :goto_1e
    if-ge v12, v6, :cond_2f

    if-eqz v32, :cond_25

    invoke-virtual {v14}, Lk0/u;->g()I

    move-result v2

    :goto_1f
    move/from16 v26, v5

    goto :goto_20

    :cond_25
    iget v2, v4, Lc1/e;->b:I

    goto :goto_1f

    :goto_20
    const-string v5, "Unexpected negative value: "

    if-ltz v2, :cond_2e

    if-eqz v33, :cond_26

    invoke-virtual {v14}, Lk0/u;->g()I

    move-result v39

    move/from16 v47, v6

    move/from16 v6, v39

    goto :goto_21

    :cond_26
    move/from16 v47, v6

    iget v6, v4, Lc1/e;->c:I

    :goto_21
    if-ltz v6, :cond_2d

    if-eqz v34, :cond_27

    invoke-virtual {v14}, Lk0/u;->g()I

    move-result v5

    goto :goto_22

    :cond_27
    if-nez v12, :cond_28

    if-eqz v31, :cond_28

    move/from16 v5, v35

    goto :goto_22

    :cond_28
    iget v5, v4, Lc1/e;->d:I

    :goto_22
    if-eqz v13, :cond_29

    invoke-virtual {v14}, Lk0/u;->g()I

    move-result v39

    move-object/from16 v48, v4

    move/from16 v4, v39

    :goto_23
    move/from16 v49, v5

    goto :goto_24

    :cond_29
    move-object/from16 v48, v4

    const/4 v4, 0x0

    goto :goto_23

    :goto_24
    int-to-long v4, v4

    add-long/2addr v4, v9

    sub-long v39, v4, v22

    const-wide/32 v41, 0xf4240

    sget-object v45, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v39 .. v45}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v38, v12

    move-wide/from16 v39, v4

    iget-boolean v4, v1, Lc1/s;->q:Z

    if-nez v4, :cond_2a

    iget-object v4, v11, Lc1/h;->d:Lc1/t;

    iget-wide v4, v4, Lc1/t;->h:J

    add-long v4, v39, v4

    aput-wide v4, v38, v12

    :cond_2a
    aput v6, v36, v12

    shr-int/lit8 v4, v49, 0x10

    const/16 v17, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2c

    if-eqz v26, :cond_2b

    if-nez v12, :cond_2c

    :cond_2b
    const/4 v4, 0x1

    goto :goto_25

    :cond_2c
    const/4 v4, 0x0

    :goto_25
    aput-boolean v4, v37, v12

    int-to-long v4, v2

    add-long/2addr v9, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v26

    move/from16 v6, v47

    move-object/from16 v4, v48

    goto :goto_1e

    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_2e
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_2f
    move/from16 v47, v6

    iput-wide v9, v1, Lc1/s;->p:J

    move/from16 v10, v27

    move/from16 v12, v47

    goto :goto_26

    :cond_30
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v46, v9

    :goto_26
    add-int/lit8 v4, v28, 0x1

    move/from16 v2, v25

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move/from16 v9, v46

    const v13, 0x7472756e

    goto/16 :goto_14

    :cond_31
    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v46, v9

    iget-object v2, v11, Lc1/h;->d:Lc1/t;

    iget-object v2, v2, Lc1/t;->a:Lc1/q;

    iget-object v4, v1, Lc1/s;->a:Lc1/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Lc1/e;->a:I

    iget-object v2, v2, Lc1/q;->l:[Lc1/r;

    aget-object v2, v2, v4

    const v4, 0x7361697a

    invoke-virtual {v3, v4}, Ll0/b;->l(I)Ll0/c;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Ll0/c;->r:Lk0/u;

    iget v5, v2, Lc1/r;->d:I

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v6

    sget-object v9, Lc1/d;->a:[B

    const/4 v11, 0x1

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_32

    invoke-virtual {v4, v10}, Lk0/u;->H(I)V

    :cond_32
    invoke-virtual {v4}, Lk0/u;->u()I

    move-result v6

    invoke-virtual {v4}, Lk0/u;->y()I

    move-result v9

    iget v10, v1, Lc1/s;->e:I

    if-gt v9, v10, :cond_37

    if-nez v6, :cond_35

    iget-object v6, v1, Lc1/s;->l:[Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_27
    if-ge v10, v9, :cond_34

    invoke-virtual {v4}, Lk0/u;->u()I

    move-result v12

    add-int/2addr v11, v12

    if-le v12, v5, :cond_33

    const/4 v12, 0x1

    goto :goto_28

    :cond_33
    const/4 v12, 0x0

    :goto_28
    aput-boolean v12, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_34
    const/4 v6, 0x0

    goto :goto_2a

    :cond_35
    if-le v6, v5, :cond_36

    const/4 v4, 0x1

    goto :goto_29

    :cond_36
    const/4 v4, 0x0

    :goto_29
    mul-int v11, v6, v9

    iget-object v5, v1, Lc1/s;->l:[Z

    const/4 v6, 0x0

    invoke-static {v5, v6, v9, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_2a
    iget-object v4, v1, Lc1/s;->l:[Z

    iget v5, v1, Lc1/s;->e:I

    invoke-static {v4, v9, v5, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v11, :cond_38

    iget-object v4, v1, Lc1/s;->n:Lk0/u;

    invoke-virtual {v4, v11}, Lk0/u;->D(I)V

    const/4 v11, 0x1

    iput-boolean v11, v1, Lc1/s;->k:Z

    iput-boolean v11, v1, Lc1/s;->o:Z

    goto :goto_2b

    :cond_37
    const-string v2, "Saiz sample count "

    const-string v3, " is greater than fragment sample count"

    invoke-static {v2, v9, v3}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lc1/s;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_38
    :goto_2b
    const v4, 0x7361696f

    invoke-virtual {v3, v4}, Ll0/b;->l(I)Ll0/c;

    move-result-object v4

    if-eqz v4, :cond_3b

    iget-object v4, v4, Ll0/c;->r:Lk0/u;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lk0/u;->G(I)V

    invoke-virtual {v4}, Lk0/u;->g()I

    move-result v5

    sget-object v6, Lc1/d;->a:[B

    and-int/lit8 v6, v5, 0x1

    const/4 v11, 0x1

    if-ne v6, v11, :cond_39

    invoke-virtual {v4, v10}, Lk0/u;->H(I)V

    :cond_39
    invoke-virtual {v4}, Lk0/u;->y()I

    move-result v6

    if-ne v6, v11, :cond_3c

    invoke-static {v5}, Lc1/d;->d(I)I

    move-result v5

    iget-wide v9, v1, Lc1/s;->c:J

    if-nez v5, :cond_3a

    invoke-virtual {v4}, Lk0/u;->w()J

    move-result-wide v4

    goto :goto_2c

    :cond_3a
    invoke-virtual {v4}, Lk0/u;->z()J

    move-result-wide v4

    :goto_2c
    add-long/2addr v9, v4

    iput-wide v9, v1, Lc1/s;->c:J

    :cond_3b
    const/4 v4, 0x0

    goto :goto_2d

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected saio entry count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :goto_2d
    const v5, 0x73656e63

    invoke-virtual {v3, v5}, Ll0/b;->l(I)Ll0/c;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v3, v3, Ll0/c;->r:Lk0/u;

    const/4 v9, 0x0

    invoke-static {v3, v9, v1}, Lc1/i;->c(Lk0/u;ILc1/s;)V

    :cond_3d
    if-eqz v2, :cond_3e

    iget-object v3, v2, Lc1/r;->b:Ljava/lang/String;

    move-object/from16 v33, v3

    goto :goto_2e

    :cond_3e
    move-object/from16 v33, v4

    :goto_2e
    move-object v2, v4

    move-object v3, v2

    const/4 v5, 0x0

    :goto_2f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_41

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll0/c;

    iget-object v9, v6, Ll0/c;->r:Lk0/u;

    iget v6, v6, LU2/e;->q:I

    const v10, 0x73626770

    const v11, 0x73656967

    if-ne v6, v10, :cond_3f

    const/16 v13, 0xc

    invoke-virtual {v9, v13}, Lk0/u;->G(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v6

    if-ne v6, v11, :cond_40

    move-object v3, v9

    goto :goto_30

    :cond_3f
    const/16 v13, 0xc

    const v10, 0x73677064

    if-ne v6, v10, :cond_40

    invoke-virtual {v9, v13}, Lk0/u;->G(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v6

    if-ne v6, v11, :cond_40

    move-object v2, v9

    :cond_40
    :goto_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_41
    const/16 v13, 0xc

    if-eqz v3, :cond_42

    if-nez v2, :cond_43

    :cond_42
    :goto_31
    const/4 v11, 0x1

    goto/16 :goto_34

    :cond_43
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v5

    invoke-static {v5}, Lc1/d;->d(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lk0/u;->H(I)V

    const/4 v11, 0x1

    if-ne v5, v11, :cond_44

    invoke-virtual {v3, v6}, Lk0/u;->H(I)V

    :cond_44
    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v3

    if-ne v3, v11, :cond_4c

    invoke-virtual {v2, v10}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v3

    invoke-static {v3}, Lc1/d;->d(I)I

    move-result v3

    invoke-virtual {v2, v6}, Lk0/u;->H(I)V

    if-ne v3, v11, :cond_46

    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v9

    cmp-long v3, v9, v22

    if-eqz v3, :cond_45

    goto :goto_32

    :cond_45
    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_46
    const/4 v5, 0x2

    if-lt v3, v5, :cond_47

    invoke-virtual {v2, v6}, Lk0/u;->H(I)V

    :cond_47
    :goto_32
    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v3, v9, v11

    if-nez v3, :cond_4b

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lk0/u;->H(I)V

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v3

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v36, v5, 0x4

    and-int/lit8 v37, v3, 0xf

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v3

    if-ne v3, v11, :cond_48

    const/16 v32, 0x1

    goto :goto_33

    :cond_48
    const/16 v32, 0x0

    :goto_33
    if-nez v32, :cond_49

    goto :goto_31

    :cond_49
    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v34

    move/from16 v3, v24

    new-array v5, v3, [B

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9, v3}, Lk0/u;->e([BII)V

    if-nez v34, :cond_4a

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v2, v4, v9, v3}, Lk0/u;->e([BII)V

    :cond_4a
    move-object/from16 v38, v4

    const/4 v11, 0x1

    iput-boolean v11, v1, Lc1/s;->k:Z

    new-instance v31, Lc1/r;

    move-object/from16 v35, v5

    invoke-direct/range {v31 .. v38}, Lc1/r;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v2, v31

    iput-object v2, v1, Lc1/s;->m:Lc1/r;

    goto :goto_34

    :cond_4b
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_4c
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :goto_34
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_35
    if-ge v9, v2, :cond_12

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/c;

    iget v4, v3, LU2/e;->q:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_4e

    iget-object v3, v3, Ll0/c;->r:Lk0/u;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lk0/u;->G(I)V

    iget-object v4, v0, Lc1/i;->h:[B

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lk0/u;->e([BII)V

    sget-object v6, Lc1/i;->L:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_36

    :cond_4d
    invoke-static {v3, v5, v1}, Lc1/i;->c(Lk0/u;ILc1/s;)V

    goto :goto_36

    :cond_4e
    const/16 v5, 0x10

    const/16 v10, 0x8

    :goto_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_4f
    move/from16 v21, v1

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v46, v9

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/16 v13, 0xc

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_37
    add-int/lit8 v9, v46, 0x1

    move/from16 v1, v21

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    goto/16 :goto_a

    :cond_50
    move-object/from16 v30, v6

    const/4 v4, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static/range {v30 .. v30}, Lc1/i;->a(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_38
    if-ge v9, v2, :cond_52

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc1/h;

    iget-object v5, v3, Lc1/h;->d:Lc1/t;

    iget-object v5, v5, Lc1/t;->a:Lc1/q;

    iget-object v6, v3, Lc1/h;->b:Lc1/s;

    iget-object v6, v6, Lc1/s;->a:Lc1/e;

    sget v7, Lk0/C;->a:I

    iget v6, v6, Lc1/e;->a:I

    iget-object v5, v5, Lc1/q;->l:[Lc1/r;

    aget-object v5, v5, v6

    if-eqz v5, :cond_51

    iget-object v5, v5, Lc1/r;->b:Ljava/lang/String;

    goto :goto_39

    :cond_51
    move-object v5, v4

    :goto_39
    invoke-virtual {v1, v5}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v5

    iget-object v6, v3, Lc1/h;->d:Lc1/t;

    iget-object v6, v6, Lc1/t;->a:Lc1/q;

    iget-object v6, v6, Lc1/q;->g:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v3, v3, Lc1/h;->a:LI0/L;

    invoke-interface {v3, v5}, LI0/L;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_52
    iget-wide v1, v0, Lc1/i;->y:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_0

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v1, :cond_55

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/h;

    iget-wide v4, v0, Lc1/i;->y:J

    iget v6, v2, Lc1/h;->f:I

    :goto_3b
    iget-object v7, v2, Lc1/h;->b:Lc1/s;

    iget v8, v7, Lc1/s;->e:I

    if-ge v6, v8, :cond_54

    iget-object v8, v7, Lc1/s;->i:[J

    aget-wide v9, v8, v6

    cmp-long v8, v9, v4

    if-gtz v8, :cond_54

    iget-object v7, v7, Lc1/s;->j:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_53

    iput v6, v2, Lc1/h;->i:I

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_55
    move-wide/from16 v2, v18

    iput-wide v2, v0, Lc1/i;->y:J

    goto/16 :goto_0

    :cond_56
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/b;

    iget-object v1, v1, Ll0/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_57
    const/4 v9, 0x0

    iput v9, v0, Lc1/i;->r:I

    iput v9, v0, Lc1/i;->u:I

    return-void
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lc1/i;->r:I

    iget-object v5, v0, Lc1/i;->m:Ljava/util/ArrayDeque;

    iget-object v7, v0, Lc1/i;->o:LA5/t;

    iget-object v8, v0, Lc1/i;->d:Landroid/util/SparseArray;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_47

    iget-object v14, v0, Lc1/i;->n:Ljava/util/ArrayDeque;

    const-string v15, "FragmentedMp4Extractor"

    iget-object v4, v0, Lc1/i;->j:Lk0/z;

    if-eq v2, v12, :cond_36

    const-wide v16, 0x7fffffffffffffffL

    if-eq v2, v11, :cond_31

    iget-object v2, v0, Lc1/i;->B:Lc1/h;

    if-nez v2, :cond_9

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v18, v11

    move v6, v13

    const/4 v11, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Lc1/h;

    const/16 v20, 0x8

    iget-boolean v9, v3, Lc1/h;->l:Z

    iget-object v12, v3, Lc1/h;->b:Lc1/s;

    if-nez v9, :cond_0

    iget v5, v3, Lc1/h;->f:I

    iget-object v10, v3, Lc1/h;->d:Lc1/t;

    iget v10, v10, Lc1/t;->b:I

    if-eq v5, v10, :cond_3

    :cond_0
    if-eqz v9, :cond_1

    iget v5, v3, Lc1/h;->h:I

    iget v10, v12, Lc1/s;->d:I

    if-ne v5, v10, :cond_1

    goto :goto_3

    :cond_1
    if-nez v9, :cond_2

    iget-object v5, v3, Lc1/h;->d:Lc1/t;

    iget-object v5, v5, Lc1/t;->c:[J

    iget v9, v3, Lc1/h;->f:I

    aget-wide v9, v5, v9

    goto :goto_2

    :cond_2
    iget-object v5, v12, Lc1/s;->f:[J

    iget v9, v3, Lc1/h;->h:I

    aget-wide v9, v5, v9

    :goto_2
    cmp-long v5, v9, v16

    if-gez v5, :cond_3

    move-object v11, v3

    move-wide/from16 v16, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    const/16 v20, 0x8

    if-nez v11, :cond_6

    iget-wide v2, v0, Lc1/i;->w:J

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_5

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    iput v13, v0, Lc1/i;->r:I

    iput v13, v0, Lc1/i;->u:I

    goto :goto_0

    :cond_5
    const-string v1, "Offset to end of mdat was negative."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_6
    iget-boolean v2, v11, Lc1/h;->l:Z

    if-nez v2, :cond_7

    iget-object v2, v11, Lc1/h;->d:Lc1/t;

    iget-object v2, v2, Lc1/t;->c:[J

    iget v3, v11, Lc1/h;->f:I

    aget-wide v5, v2, v3

    goto :goto_4

    :cond_7
    iget-object v2, v11, Lc1/h;->b:Lc1/s;

    iget-object v2, v2, Lc1/s;->f:[J

    iget v3, v11, Lc1/h;->h:I

    aget-wide v5, v2, v3

    :goto_4
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v2

    sub-long/2addr v5, v2

    long-to-int v2, v5

    if-gez v2, :cond_8

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v15, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    :cond_8
    invoke-interface {v1, v2}, LI0/r;->n(I)V

    iput-object v11, v0, Lc1/i;->B:Lc1/h;

    move-object v2, v11

    goto :goto_5

    :cond_9
    move/from16 v18, v11

    const/16 v20, 0x8

    :goto_5
    iget-object v3, v2, Lc1/h;->b:Lc1/s;

    iget v5, v0, Lc1/i;->r:I

    const/4 v6, 0x6

    iget v8, v0, Lc1/i;->b:I

    const-string v9, "video/avc"

    const/4 v10, 0x3

    if-ne v5, v10, :cond_14

    iget-boolean v5, v2, Lc1/h;->l:Z

    if-nez v5, :cond_a

    iget-object v5, v2, Lc1/h;->d:Lc1/t;

    iget-object v5, v5, Lc1/t;->d:[I

    iget v10, v2, Lc1/h;->f:I

    aget v5, v5, v10

    goto :goto_6

    :cond_a
    iget-object v5, v3, Lc1/s;->h:[I

    iget v10, v2, Lc1/h;->f:I

    aget v5, v5, v10

    :goto_6
    iput v5, v0, Lc1/i;->C:I

    and-int/lit8 v5, v8, 0x40

    if-eqz v5, :cond_c

    iget-object v5, v2, Lc1/h;->d:Lc1/t;

    iget-object v5, v5, Lc1/t;->a:Lc1/q;

    iget-object v5, v5, Lc1/q;->g:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move v5, v13

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v5, 0x1

    :goto_8
    iput-boolean v5, v0, Lc1/i;->F:Z

    iget v5, v2, Lc1/h;->f:I

    iget v10, v2, Lc1/h;->i:I

    if-ge v5, v10, :cond_11

    iget v4, v0, Lc1/i;->C:I

    invoke-interface {v1, v4}, LI0/r;->n(I)V

    invoke-virtual {v2}, Lc1/h;->b()Lc1/r;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    iget-object v4, v3, Lc1/s;->n:Lk0/u;

    iget v1, v1, Lc1/r;->d:I

    if-eqz v1, :cond_e

    invoke-virtual {v4, v1}, Lk0/u;->H(I)V

    :cond_e
    iget v1, v2, Lc1/h;->f:I

    iget-boolean v5, v3, Lc1/s;->k:Z

    if-eqz v5, :cond_f

    iget-object v3, v3, Lc1/s;->l:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_f

    invoke-virtual {v4}, Lk0/u;->A()I

    move-result v1

    mul-int/2addr v1, v6

    invoke-virtual {v4, v1}, Lk0/u;->H(I)V

    :cond_f
    :goto_9
    invoke-virtual {v2}, Lc1/h;->c()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v2, 0x0

    iput-object v2, v0, Lc1/i;->B:Lc1/h;

    :cond_10
    const/4 v10, 0x3

    iput v10, v0, Lc1/i;->r:I

    return v13

    :cond_11
    iget-object v5, v2, Lc1/h;->d:Lc1/t;

    iget-object v5, v5, Lc1/t;->a:Lc1/q;

    iget v5, v5, Lc1/q;->h:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_12

    iget v5, v0, Lc1/i;->C:I

    add-int/lit8 v5, v5, -0x8

    iput v5, v0, Lc1/i;->C:I

    move/from16 v5, v20

    invoke-interface {v1, v5}, LI0/r;->n(I)V

    :cond_12
    iget-object v5, v2, Lc1/h;->d:Lc1/t;

    iget-object v5, v5, Lc1/t;->a:Lc1/q;

    iget-object v5, v5, Lc1/q;->g:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v10, "audio/ac4"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v0, Lc1/i;->C:I

    const/4 v10, 0x7

    invoke-virtual {v2, v5, v10}, Lc1/h;->d(II)I

    move-result v5

    iput v5, v0, Lc1/i;->D:I

    iget v5, v0, Lc1/i;->C:I

    iget-object v11, v0, Lc1/i;->i:Lk0/u;

    invoke-static {v11, v5}, LI0/e;->a(Lk0/u;I)V

    iget-object v5, v2, Lc1/h;->a:LI0/L;

    invoke-interface {v5, v11, v10}, LI0/L;->sampleData(Lk0/u;I)V

    iget v5, v0, Lc1/i;->D:I

    add-int/2addr v5, v10

    iput v5, v0, Lc1/i;->D:I

    goto :goto_a

    :cond_13
    iget v5, v0, Lc1/i;->C:I

    invoke-virtual {v2, v5, v13}, Lc1/h;->d(II)I

    move-result v5

    iput v5, v0, Lc1/i;->D:I

    :goto_a
    iget v5, v0, Lc1/i;->C:I

    iget v10, v0, Lc1/i;->D:I

    add-int/2addr v5, v10

    iput v5, v0, Lc1/i;->C:I

    const/4 v5, 0x4

    iput v5, v0, Lc1/i;->r:I

    iput v13, v0, Lc1/i;->E:I

    :cond_14
    iget-object v5, v2, Lc1/h;->d:Lc1/t;

    iget-object v10, v5, Lc1/t;->a:Lc1/q;

    iget-object v11, v2, Lc1/h;->a:LI0/L;

    iget-boolean v12, v2, Lc1/h;->l:Z

    if-nez v12, :cond_15

    iget-object v3, v5, Lc1/t;->f:[J

    iget v5, v2, Lc1/h;->f:I

    aget-wide v15, v3, v5

    :goto_b
    move-object v3, v7

    move-wide v6, v15

    goto :goto_c

    :cond_15
    iget v5, v2, Lc1/h;->f:I

    iget-object v3, v3, Lc1/s;->i:[J

    aget-wide v15, v3, v5

    goto :goto_b

    :goto_c
    if-eqz v4, :cond_16

    invoke-virtual {v4, v6, v7}, Lk0/z;->a(J)J

    move-result-wide v6

    :cond_16
    iget v12, v10, Lc1/q;->k:I

    iget-object v10, v10, Lc1/q;->g:Landroidx/media3/common/Format;

    if-eqz v12, :cond_28

    iget-object v15, v0, Lc1/i;->f:Lk0/u;

    iget-object v5, v15, Lk0/u;->a:[B

    aput-byte v13, v5, v13

    const/16 v22, 0x1

    aput-byte v13, v5, v22

    aput-byte v13, v5, v18

    add-int/lit8 v13, v12, 0x1

    const/16 v21, 0x4

    rsub-int/lit8 v12, v12, 0x4

    move-object/from16 v17, v3

    :goto_d
    iget v3, v0, Lc1/i;->D:I

    move/from16 v20, v8

    iget v8, v0, Lc1/i;->C:I

    if-ge v3, v8, :cond_27

    iget v3, v0, Lc1/i;->E:I

    const-string v8, "video/hevc"

    if-nez v3, :cond_1f

    invoke-interface {v1, v5, v12, v13}, LI0/r;->readFully([BII)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lk0/u;->G(I)V

    invoke-virtual {v15}, Lk0/u;->g()I

    move-result v3

    move-object/from16 v24, v5

    const/4 v5, 0x1

    if-lt v3, v5, :cond_1e

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lc1/i;->E:I

    iget-object v3, v0, Lc1/i;->e:Lk0/u;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lk0/u;->G(I)V

    const/4 v5, 0x4

    invoke-interface {v11, v3, v5}, LI0/L;->sampleData(Lk0/u;I)V

    const/4 v3, 0x1

    invoke-interface {v11, v15, v3}, LI0/L;->sampleData(Lk0/u;I)V

    iget-object v3, v0, Lc1/i;->J:[LI0/L;

    array-length v3, v3

    if-lez v3, :cond_1b

    aget-byte v3, v24, v5

    iget-object v5, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, v10, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v5, v9}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_e

    :cond_17
    move/from16 v18, v12

    const/4 v12, 0x6

    goto :goto_f

    :cond_18
    :goto_e
    and-int/lit8 v5, v3, 0x1f

    move/from16 v18, v12

    const/4 v12, 0x6

    if-eq v5, v12, :cond_1a

    :goto_f
    iget-object v5, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, v10, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v5, v8}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_19
    and-int/lit8 v3, v3, 0x7e

    const/16 v22, 0x1

    shr-int/lit8 v3, v3, 0x1

    const/16 v5, 0x27

    if-ne v3, v5, :cond_1c

    :cond_1a
    const/4 v3, 0x1

    goto :goto_10

    :cond_1b
    move/from16 v18, v12

    const/4 v12, 0x6

    :cond_1c
    const/4 v3, 0x0

    :goto_10
    iput-boolean v3, v0, Lc1/i;->G:Z

    iget v3, v0, Lc1/i;->D:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lc1/i;->D:I

    iget v3, v0, Lc1/i;->C:I

    add-int v3, v3, v18

    iput v3, v0, Lc1/i;->C:I

    iget-boolean v3, v0, Lc1/i;->F:Z

    if-nez v3, :cond_1d

    iget-object v3, v2, Lc1/h;->d:Lc1/t;

    iget-object v3, v3, Lc1/t;->a:Lc1/q;

    iget-object v3, v3, Lc1/q;->g:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v21, 0x4

    aget-byte v3, v24, v21

    invoke-static {v3}, Ll0/n;->c(B)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lc1/i;->F:Z

    :cond_1d
    move/from16 v12, v18

    move/from16 v8, v20

    move-object/from16 v5, v24

    goto/16 :goto_d

    :cond_1e
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1f
    move-object/from16 v24, v5

    move/from16 v18, v12

    const/4 v12, 0x6

    iget-boolean v5, v0, Lc1/i;->G:Z

    if-eqz v5, :cond_25

    iget-object v5, v0, Lc1/i;->g:Lk0/u;

    invoke-virtual {v5, v3}, Lk0/u;->D(I)V

    iget-object v3, v5, Lk0/u;->a:[B

    iget v12, v0, Lc1/i;->E:I

    move-object/from16 v32, v2

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2, v12}, LI0/r;->readFully([BII)V

    iget v2, v0, Lc1/i;->E:I

    invoke-interface {v11, v5, v2}, LI0/L;->sampleData(Lk0/u;I)V

    iget v2, v0, Lc1/i;->E:I

    iget-object v3, v5, Lk0/u;->a:[B

    iget v12, v5, Lk0/u;->c:I

    invoke-static {v3, v12}, Ll0/n;->k([BI)I

    move-result v3

    iget-object v12, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v12, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    iget-object v12, v10, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v12, v8}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_11

    :cond_20
    const/4 v8, 0x0

    goto :goto_12

    :cond_21
    :goto_11
    const/4 v8, 0x1

    :goto_12
    invoke-virtual {v5, v8}, Lk0/u;->G(I)V

    invoke-virtual {v5, v3}, Lk0/u;->F(I)V

    iget v3, v10, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_22

    move-object/from16 v12, v17

    iget v3, v12, LA5/t;->a:I

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    iput v3, v12, LA5/t;->a:I

    invoke-virtual {v12, v3}, LA5/t;->i(I)V

    goto :goto_14

    :cond_22
    move-object/from16 v12, v17

    iget v8, v12, LA5/t;->a:I

    if-eq v8, v3, :cond_24

    if-ltz v3, :cond_23

    const/4 v8, 0x1

    goto :goto_13

    :cond_23
    const/4 v8, 0x0

    :goto_13
    invoke-static {v8}, Lk0/c;->j(Z)V

    iput v3, v12, LA5/t;->a:I

    invoke-virtual {v12, v3}, LA5/t;->i(I)V

    :cond_24
    :goto_14
    invoke-virtual {v12, v6, v7, v5}, LA5/t;->a(JLk0/u;)V

    invoke-virtual/range {v32 .. v32}, Lc1/h;->a()I

    move-result v3

    const/16 v21, 0x4

    and-int/lit8 v3, v3, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_26

    invoke-virtual {v12, v5}, LA5/t;->i(I)V

    goto :goto_15

    :cond_25
    move-object/from16 v32, v2

    move-object/from16 v12, v17

    const/4 v5, 0x0

    invoke-interface {v11, v1, v3, v5}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    :cond_26
    :goto_15
    iget v3, v0, Lc1/i;->D:I

    add-int/2addr v3, v2

    iput v3, v0, Lc1/i;->D:I

    iget v3, v0, Lc1/i;->E:I

    sub-int/2addr v3, v2

    iput v3, v0, Lc1/i;->E:I

    move-object/from16 v17, v12

    move/from16 v12, v18

    move/from16 v8, v20

    move-object/from16 v5, v24

    move-object/from16 v2, v32

    goto/16 :goto_d

    :cond_27
    move-object/from16 v32, v2

    goto :goto_17

    :cond_28
    move-object/from16 v32, v2

    move/from16 v20, v8

    :goto_16
    iget v2, v0, Lc1/i;->D:I

    iget v3, v0, Lc1/i;->C:I

    if-ge v2, v3, :cond_29

    sub-int/2addr v3, v2

    const/4 v5, 0x0

    invoke-interface {v11, v1, v3, v5}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v3, v0, Lc1/i;->D:I

    add-int/2addr v3, v2

    iput v3, v0, Lc1/i;->D:I

    goto :goto_16

    :cond_29
    :goto_17
    invoke-virtual/range {v32 .. v32}, Lc1/h;->a()I

    move-result v1

    and-int/lit8 v2, v20, 0x40

    if-eqz v2, :cond_2a

    iget-boolean v2, v0, Lc1/i;->F:Z

    if-nez v2, :cond_2a

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_2a
    move/from16 v27, v1

    invoke-virtual/range {v32 .. v32}, Lc1/h;->b()Lc1/r;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lc1/r;->c:LI0/K;

    move-object/from16 v30, v1

    goto :goto_18

    :cond_2b
    const/16 v30, 0x0

    :goto_18
    iget v1, v0, Lc1/i;->C:I

    const/16 v29, 0x0

    move/from16 v28, v1

    move-wide/from16 v25, v6

    move-object/from16 v24, v11

    invoke-interface/range {v24 .. v30}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    :cond_2c
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/g;

    iget v2, v0, Lc1/i;->x:I

    iget v3, v1, Lc1/g;->c:I

    sub-int/2addr v2, v3

    iput v2, v0, Lc1/i;->x:I

    iget-wide v2, v1, Lc1/g;->a:J

    iget-boolean v5, v1, Lc1/g;->b:Z

    if-eqz v5, :cond_2d

    add-long v2, v2, v25

    :cond_2d
    if-eqz v4, :cond_2e

    invoke-virtual {v4, v2, v3}, Lk0/z;->a(J)J

    move-result-wide v2

    :cond_2e
    move-wide v6, v2

    iget-object v2, v0, Lc1/i;->I:[LI0/L;

    array-length v3, v2

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v3, :cond_2c

    aget-object v5, v2, v12

    iget v9, v1, Lc1/g;->c:I

    iget v10, v0, Lc1/i;->x:I

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    :cond_2f
    invoke-virtual/range {v32 .. v32}, Lc1/h;->c()Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v2, 0x0

    iput-object v2, v0, Lc1/i;->B:Lc1/h;

    :cond_30
    const/4 v10, 0x3

    iput v10, v0, Lc1/i;->r:I

    const/16 v31, 0x0

    return v31

    :cond_31
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_33

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc1/h;

    iget-object v5, v5, Lc1/h;->b:Lc1/s;

    iget-boolean v6, v5, Lc1/s;->o:Z

    if-eqz v6, :cond_32

    iget-wide v5, v5, Lc1/s;->c:J

    cmp-long v7, v5, v16

    if-gez v7, :cond_32

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc1/h;

    move-wide/from16 v16, v5

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_33
    if-nez v3, :cond_34

    const/4 v10, 0x3

    iput v10, v0, Lc1/i;->r:I

    goto/16 :goto_0

    :cond_34
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v4

    sub-long v4, v16, v4

    long-to-int v2, v4

    if-ltz v2, :cond_35

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    iget-object v2, v3, Lc1/h;->b:Lc1/s;

    iget-object v3, v2, Lc1/s;->n:Lk0/u;

    iget-object v4, v3, Lk0/u;->a:[B

    iget v5, v3, Lk0/u;->c:I

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v5}, LI0/r;->readFully([BII)V

    invoke-virtual {v3, v6}, Lk0/u;->G(I)V

    iput-boolean v6, v2, Lc1/s;->o:Z

    goto/16 :goto_0

    :cond_35
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_36
    move/from16 v18, v11

    iget-wide v2, v0, Lc1/i;->t:J

    long-to-int v2, v2

    iget v3, v0, Lc1/i;->u:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lc1/i;->v:Lk0/u;

    if-eqz v3, :cond_45

    iget-object v6, v3, Lk0/u;->a:[B

    const/16 v7, 0x8

    invoke-interface {v1, v6, v7, v2}, LI0/r;->readFully([BII)V

    new-instance v2, Ll0/c;

    iget v6, v0, Lc1/i;->s:I

    invoke-direct {v2, v3, v6}, Ll0/c;-><init>(Lk0/u;I)V

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/b;

    iget-object v3, v3, Ll0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :cond_37
    const v2, 0x73696478

    if-ne v6, v2, :cond_3b

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v2

    invoke-static {v2}, Lc1/d;->d(I)I

    move-result v2

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lk0/u;->H(I)V

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v13

    if-nez v2, :cond_38

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v4

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v9

    :goto_1b
    add-long/2addr v9, v7

    move-wide/from16 v33, v9

    move-wide v9, v4

    move-wide/from16 v4, v33

    goto :goto_1c

    :cond_38
    invoke-virtual {v3}, Lk0/u;->z()J

    move-result-wide v4

    invoke-virtual {v3}, Lk0/u;->z()J

    move-result-wide v9

    goto :goto_1b

    :goto_1c
    sget v2, Lk0/C;->a:I

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    move/from16 v2, v18

    invoke-virtual {v3, v2}, Lk0/u;->H(I)V

    invoke-virtual {v3}, Lk0/u;->A()I

    move-result v2

    new-array v8, v2, [I

    new-array v11, v2, [J

    new-array v12, v2, [J

    new-array v15, v2, [J

    move-wide/from16 v17, v6

    move-object/from16 v16, v11

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v2, :cond_3a

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v19

    const/high16 v20, -0x80000000

    and-int v20, v19, v20

    if-nez v20, :cond_39

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v24

    const v20, 0x7fffffff

    and-int v19, v19, v20

    aput v19, v8, v11

    aput-wide v4, v16, v11

    aput-wide v17, v15, v11

    add-long v9, v9, v24

    move/from16 v31, v11

    move-object/from16 v17, v12

    const-wide/32 v11, 0xf4240

    move-object/from16 v18, v15

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move/from16 p2, v2

    move-object/from16 v2, v16

    move-wide/from16 v33, v4

    move-object/from16 v4, v17

    move-wide/from16 v16, v33

    move-object/from16 v5, v18

    invoke-static/range {v9 .. v15}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    aget-wide v18, v5, v31

    sub-long v18, v11, v18

    aput-wide v18, v4, v31

    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lk0/u;->H(I)V

    aget v15, v8, v31

    move-wide/from16 v18, v6

    int-to-long v6, v15

    add-long v6, v16, v6

    add-int/lit8 v15, v31, 0x1

    move-object/from16 v16, v2

    move/from16 v2, p2

    move-wide/from16 v33, v11

    move-object v12, v4

    move v11, v15

    move-object v15, v5

    move-wide v4, v6

    move-wide/from16 v6, v18

    move-wide/from16 v17, v33

    goto :goto_1d

    :cond_39
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_3a
    move-wide/from16 v18, v6

    move-object v4, v12

    move-object v5, v15

    move-object/from16 v2, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v6, LI0/l;

    invoke-direct {v6, v8, v2, v4, v5}, LI0/l;-><init>([I[J[J[J)V

    invoke-static {v3, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lc1/i;->A:J

    iget-object v3, v0, Lc1/i;->H:LI0/s;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, LI0/F;

    invoke-interface {v3, v2}, LI0/s;->seekMap(LI0/F;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lc1/i;->K:Z

    goto/16 :goto_23

    :cond_3b
    const v2, 0x656d7367

    if-ne v6, v2, :cond_46

    iget-object v2, v0, Lc1/i;->I:[LI0/L;

    array-length v2, v2

    if-nez v2, :cond_3c

    goto/16 :goto_23

    :cond_3c
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v2

    invoke-static {v2}, Lc1/d;->d(I)I

    move-result v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_3e

    const/4 v10, 0x1

    if-eq v2, v10, :cond_3d

    const-string v3, "Skipping unsupported emsg version: "

    invoke-static {v3, v2, v15}, Lcom/google/android/material/datepicker/e;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_23

    :cond_3d
    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v11

    invoke-virtual {v3}, Lk0/u;->z()J

    move-result-wide v7

    sget v2, Lk0/C;->a:I

    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v9, 0xf4240

    invoke-static/range {v7 .. v13}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v15

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    invoke-static/range {v7 .. v13}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v9

    invoke-virtual {v3}, Lk0/u;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lk0/u;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v26, v7

    move-wide/from16 v28, v9

    move-wide v9, v15

    move-wide v7, v5

    :goto_1e
    move-object/from16 v24, v2

    move-object/from16 v25, v11

    goto :goto_20

    :cond_3e
    invoke-virtual {v3}, Lk0/u;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lk0/u;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v19

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v15

    sget v7, Lk0/C;->a:I

    sget-object v21, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v17, 0xf4240

    invoke-static/range {v15 .. v21}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    iget-wide v9, v0, Lc1/i;->A:J

    cmp-long v12, v9, v5

    if-eqz v12, :cond_3f

    add-long/2addr v9, v7

    goto :goto_1f

    :cond_3f
    move-wide v9, v5

    :goto_1f
    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    invoke-static/range {v15 .. v21}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v15

    move-wide/from16 v26, v12

    move-wide/from16 v28, v15

    goto :goto_1e

    :goto_20
    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v3, v2, v12, v11}, Lk0/u;->e([BII)V

    new-instance v23, LT0/a;

    move-object/from16 v30, v2

    invoke-direct/range {v23 .. v30}, LT0/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v2, v23

    new-instance v3, Lk0/u;

    iget-object v11, v0, Lc1/i;->k:LA/j;

    invoke-virtual {v11, v2}, LA/j;->r(LT0/a;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lk0/u;-><init>([B)V

    invoke-virtual {v3}, Lk0/u;->a()I

    move-result v2

    iget-object v11, v0, Lc1/i;->I:[LI0/L;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_21
    if-ge v13, v12, :cond_40

    aget-object v15, v11, v13

    move-wide/from16 v16, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lk0/u;->G(I)V

    invoke-interface {v15, v3, v2}, LI0/L;->sampleData(Lk0/u;I)V

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v5, v16

    goto :goto_21

    :cond_40
    move-wide/from16 v16, v5

    cmp-long v3, v9, v16

    if-nez v3, :cond_41

    new-instance v3, Lc1/g;

    const/4 v10, 0x1

    invoke-direct {v3, v2, v10, v7, v8}, Lc1/g;-><init>(IZJ)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lc1/i;->x:I

    add-int/2addr v3, v2

    iput v3, v0, Lc1/i;->x:I

    goto :goto_23

    :cond_41
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_42

    new-instance v3, Lc1/g;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v9, v10}, Lc1/g;-><init>(IZJ)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lc1/i;->x:I

    add-int/2addr v3, v2

    iput v3, v0, Lc1/i;->x:I

    goto :goto_23

    :cond_42
    const/4 v5, 0x0

    if-eqz v4, :cond_43

    invoke-virtual {v4}, Lk0/z;->e()Z

    move-result v3

    if-nez v3, :cond_43

    new-instance v3, Lc1/g;

    invoke-direct {v3, v2, v5, v9, v10}, Lc1/g;-><init>(IZJ)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lc1/i;->x:I

    add-int/2addr v3, v2

    iput v3, v0, Lc1/i;->x:I

    goto :goto_23

    :cond_43
    if-eqz v4, :cond_44

    invoke-virtual {v4, v9, v10}, Lk0/z;->a(J)J

    move-result-wide v9

    :cond_44
    move-wide/from16 v16, v9

    iget-object v3, v0, Lc1/i;->I:[LI0/L;

    array-length v4, v3

    const/4 v13, 0x0

    :goto_22
    if-ge v13, v4, :cond_46

    aget-object v15, v3, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x1

    move/from16 v19, v2

    invoke-interface/range {v15 .. v21}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    :cond_45
    invoke-interface {v1, v2}, LI0/r;->n(I)V

    :cond_46
    :goto_23
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc1/i;->d(J)V

    goto/16 :goto_0

    :cond_47
    move-object v12, v7

    iget v2, v0, Lc1/i;->u:I

    iget-object v3, v0, Lc1/i;->l:Lk0/u;

    if-nez v2, :cond_49

    iget-object v2, v3, Lk0/u;->a:[B

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v10, 0x1

    invoke-interface {v1, v2, v6, v7, v10}, LI0/r;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v12, v6}, LA5/t;->i(I)V

    const/16 v19, -0x1

    return v19

    :cond_48
    iput v7, v0, Lc1/i;->u:I

    invoke-virtual {v3, v6}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->w()J

    move-result-wide v6

    iput-wide v6, v0, Lc1/i;->t:J

    invoke-virtual {v3}, Lk0/u;->g()I

    move-result v2

    iput v2, v0, Lc1/i;->s:I

    :cond_49
    iget-wide v6, v0, Lc1/i;->t:J

    const-wide/16 v9, 0x1

    cmp-long v2, v6, v9

    if-nez v2, :cond_4a

    iget-object v2, v3, Lk0/u;->a:[B

    const/16 v7, 0x8

    invoke-interface {v1, v2, v7, v7}, LI0/r;->readFully([BII)V

    iget v2, v0, Lc1/i;->u:I

    add-int/2addr v2, v7

    iput v2, v0, Lc1/i;->u:I

    invoke-virtual {v3}, Lk0/u;->z()J

    move-result-wide v6

    iput-wide v6, v0, Lc1/i;->t:J

    goto :goto_24

    :cond_4a
    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-nez v2, :cond_4c

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v6

    const-wide/16 v9, -0x1

    cmp-long v2, v6, v9

    if-nez v2, :cond_4b

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/b;

    iget-wide v6, v2, Ll0/b;->r:J

    :cond_4b
    cmp-long v2, v6, v9

    if-eqz v2, :cond_4c

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v9

    sub-long/2addr v6, v9

    iget v2, v0, Lc1/i;->u:I

    int-to-long v9, v2

    add-long/2addr v6, v9

    iput-wide v6, v0, Lc1/i;->t:J

    :cond_4c
    :goto_24
    iget-wide v6, v0, Lc1/i;->t:J

    iget v2, v0, Lc1/i;->u:I

    int-to-long v9, v2

    cmp-long v2, v6, v9

    if-ltz v2, :cond_59

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v6

    iget v2, v0, Lc1/i;->u:I

    int-to-long v9, v2

    sub-long/2addr v6, v9

    iget v2, v0, Lc1/i;->s:I

    const v4, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v2, v9, :cond_4d

    if-ne v2, v4, :cond_4e

    :cond_4d
    iget-boolean v2, v0, Lc1/i;->K:Z

    if-nez v2, :cond_4e

    iget-object v2, v0, Lc1/i;->H:LI0/s;

    new-instance v10, LI0/v;

    iget-wide v11, v0, Lc1/i;->z:J

    invoke-direct {v10, v11, v12, v6, v7}, LI0/v;-><init>(JJ)V

    invoke-interface {v2, v10}, LI0/s;->seekMap(LI0/F;)V

    const/4 v10, 0x1

    iput-boolean v10, v0, Lc1/i;->K:Z

    :cond_4e
    iget v2, v0, Lc1/i;->s:I

    if-ne v2, v9, :cond_4f

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_25
    if-ge v10, v2, :cond_4f

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc1/h;

    iget-object v11, v11, Lc1/h;->b:Lc1/s;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v6, v11, Lc1/s;->c:J

    iput-wide v6, v11, Lc1/s;->b:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    :cond_4f
    iget v2, v0, Lc1/i;->s:I

    if-ne v2, v4, :cond_50

    const/4 v4, 0x0

    iput-object v4, v0, Lc1/i;->B:Lc1/h;

    iget-wide v2, v0, Lc1/i;->t:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Lc1/i;->w:J

    const/4 v2, 0x2

    iput v2, v0, Lc1/i;->r:I

    goto/16 :goto_0

    :cond_50
    const v4, 0x6d6f6f76

    if-eq v2, v4, :cond_57

    const v4, 0x7472616b

    if-eq v2, v4, :cond_57

    const v4, 0x6d646961

    if-eq v2, v4, :cond_57

    const v4, 0x6d696e66

    if-eq v2, v4, :cond_57

    const v4, 0x7374626c

    if-eq v2, v4, :cond_57

    if-eq v2, v9, :cond_57

    const v4, 0x74726166

    if-eq v2, v4, :cond_57

    const v4, 0x6d766578

    if-eq v2, v4, :cond_57

    const v4, 0x65647473

    if-ne v2, v4, :cond_51

    goto/16 :goto_27

    :cond_51
    const v4, 0x68646c72    # 4.3148E24f

    const-wide/32 v5, 0x7fffffff

    if-eq v2, v4, :cond_54

    const v4, 0x6d646864

    if-eq v2, v4, :cond_54

    const v4, 0x6d766864

    if-eq v2, v4, :cond_54

    const v4, 0x73696478

    if-eq v2, v4, :cond_54

    const v4, 0x73747364

    if-eq v2, v4, :cond_54

    const v4, 0x73747473

    if-eq v2, v4, :cond_54

    const v4, 0x63747473

    if-eq v2, v4, :cond_54

    const v4, 0x73747363

    if-eq v2, v4, :cond_54

    const v4, 0x7374737a

    if-eq v2, v4, :cond_54

    const v4, 0x73747a32

    if-eq v2, v4, :cond_54

    const v4, 0x7374636f

    if-eq v2, v4, :cond_54

    const v4, 0x636f3634

    if-eq v2, v4, :cond_54

    const v4, 0x73747373

    if-eq v2, v4, :cond_54

    const v4, 0x74666474

    if-eq v2, v4, :cond_54

    const v4, 0x74666864

    if-eq v2, v4, :cond_54

    const v4, 0x746b6864

    if-eq v2, v4, :cond_54

    const v4, 0x74726578

    if-eq v2, v4, :cond_54

    const v4, 0x7472756e

    if-eq v2, v4, :cond_54

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_54

    const v4, 0x7361697a

    if-eq v2, v4, :cond_54

    const v4, 0x7361696f

    if-eq v2, v4, :cond_54

    const v4, 0x73656e63

    if-eq v2, v4, :cond_54

    const v4, 0x75756964

    if-eq v2, v4, :cond_54

    const v4, 0x73626770

    if-eq v2, v4, :cond_54

    const v4, 0x73677064

    if-eq v2, v4, :cond_54

    const v4, 0x656c7374

    if-eq v2, v4, :cond_54

    const v4, 0x6d656864

    if-eq v2, v4, :cond_54

    const v4, 0x656d7367

    if-ne v2, v4, :cond_52

    goto :goto_26

    :cond_52
    iget-wide v2, v0, Lc1/i;->t:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_53

    const/4 v2, 0x0

    iput-object v2, v0, Lc1/i;->v:Lk0/u;

    const/4 v10, 0x1

    iput v10, v0, Lc1/i;->r:I

    goto/16 :goto_0

    :cond_53
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_54
    :goto_26
    iget v2, v0, Lc1/i;->u:I

    const/16 v7, 0x8

    if-ne v2, v7, :cond_56

    iget-wide v8, v0, Lc1/i;->t:J

    cmp-long v2, v8, v5

    if-gtz v2, :cond_55

    new-instance v2, Lk0/u;

    iget-wide v4, v0, Lc1/i;->t:J

    long-to-int v4, v4

    invoke-direct {v2, v4}, Lk0/u;-><init>(I)V

    iget-object v3, v3, Lk0/u;->a:[B

    iget-object v4, v2, Lk0/u;->a:[B

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lc1/i;->v:Lk0/u;

    const/4 v10, 0x1

    iput v10, v0, Lc1/i;->r:I

    goto/16 :goto_0

    :cond_55
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_56
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_57
    :goto_27
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v2

    iget-wide v6, v0, Lc1/i;->t:J

    add-long/2addr v2, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v2, v6

    new-instance v4, Ll0/b;

    iget v6, v0, Lc1/i;->s:I

    invoke-direct {v4, v6, v2, v3}, Ll0/b;-><init>(IJ)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, v0, Lc1/i;->t:J

    iget v6, v0, Lc1/i;->u:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_58

    invoke-virtual {v0, v2, v3}, Lc1/i;->d(J)V

    goto/16 :goto_0

    :cond_58
    const/4 v5, 0x0

    iput v5, v0, Lc1/i;->r:I

    iput v5, v0, Lc1/i;->u:I

    goto/16 :goto_0

    :cond_59
    const-string v1, "Atom size less than header length (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method public final f(JJ)V
    .locals 3

    iget-object p1, p0, Lc1/i;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/h;

    invoke-virtual {v2}, Lc1/h;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc1/i;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lc1/i;->x:I

    iget-object p1, p0, Lc1/i;->o:LA5/t;

    invoke-virtual {p1, v0}, LA5/t;->i(I)V

    iput-wide p3, p0, Lc1/i;->y:J

    iget-object p1, p0, Lc1/i;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lc1/i;->r:I

    iput v0, p0, Lc1/i;->u:I

    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lc1/i;->q:Lp3/Y;

    return-object v0
.end method

.method public final k(LI0/s;)V
    .locals 6

    iget v0, p0, Lc1/i;->b:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    new-instance v1, LJ/l;

    iget-object v2, p0, Lc1/i;->a:Lf1/k;

    invoke-direct {v1, p1, v2}, LJ/l;-><init>(LI0/s;Lf1/k;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lc1/i;->H:LI0/s;

    const/4 v1, 0x0

    iput v1, p0, Lc1/i;->r:I

    iput v1, p0, Lc1/i;->u:I

    const/4 v2, 0x2

    new-array v2, v2, [LI0/L;

    iput-object v2, p0, Lc1/i;->I:[LI0/L;

    iget-object v3, p0, Lc1/i;->p:LI0/L;

    if-eqz v3, :cond_1

    aput-object v3, v2, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    and-int/lit8 v0, v0, 0x4

    const/16 v4, 0x64

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/4 v5, 0x5

    invoke-interface {p1, v4, v5}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    aput-object p1, v2, v3

    const/16 v4, 0x65

    move v3, v0

    :cond_2
    iget-object p1, p0, Lc1/i;->I:[LI0/L;

    invoke-static {v3, p1}, Lk0/C;->S(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LI0/L;

    iput-object p1, p0, Lc1/i;->I:[LI0/L;

    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    sget-object v5, Lc1/i;->M:Landroidx/media3/common/Format;

    invoke-interface {v3, v5}, LI0/L;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lc1/i;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LI0/L;

    iput-object v0, p0, Lc1/i;->J:[LI0/L;

    :goto_2
    iget-object v0, p0, Lc1/i;->J:[LI0/L;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lc1/i;->H:LI0/s;

    add-int/lit8 v2, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-interface {v0, v3}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iget-object v3, p0, Lc1/i;->J:[LI0/L;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
