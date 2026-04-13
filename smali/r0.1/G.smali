.class public final Lr0/G;
.super Ljava/lang/Object;

# interfaces
.implements Lr0/s;


# static fields
.field public static final k0:Ljava/lang/Object;

.field public static l0:Ljava/util/concurrent/ScheduledExecutorService;

.field public static m0:I


# instance fields
.field public A:Landroidx/media3/common/AudioAttributes;

.field public B:Lr0/D;

.field public C:Lr0/D;

.field public D:Landroidx/media3/common/PlaybackParameters;

.field public E:Z

.field public F:Ljava/nio/ByteBuffer;

.field public G:I

.field public H:J

.field public I:J

.field public J:J

.field public K:J

.field public L:I

.field public M:Z

.field public N:Z

.field public O:J

.field public P:F

.field public Q:Ljava/nio/ByteBuffer;

.field public R:I

.field public S:Ljava/nio/ByteBuffer;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:Landroidx/media3/common/AuxEffectInfo;

.field public final a:Landroid/content/Context;

.field public a0:Lcom/bumptech/glide/f;

.field public final b:Lr0/C;

.field public b0:Z

.field public final c:Z

.field public c0:J

.field public final d:Lr0/w;

.field public d0:J

.field public final e:Lr0/O;

.field public e0:Z

.field public final f:Lp3/Y;

.field public f0:Z

.field public final g:Lp3/Y;

.field public g0:Landroid/os/Looper;

.field public final h:Lr0/v;

.field public h0:J

.field public final i:Ljava/util/ArrayDeque;

.field public i0:J

.field public final j:Z

.field public j0:Landroid/os/Handler;

.field public k:I

.field public l:Lr0/C;

.field public final m:Ld2/j;

.field public final n:Ld2/j;

.field public final o:Lr0/H;

.field public final p:Lr0/y;

.field public final q:Lr0/I;

.field public r:Lq0/q;

.field public s:Lr0/p;

.field public t:Lr0/B;

.field public u:Lr0/B;

.field public v:Li0/a;

.field public w:Landroid/media/AudioTrack;

.field public x:Lr0/b;

.field public y:Lr0/e;

.field public z:Lr0/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0/G;->k0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr0/A;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lr0/A;->a:Landroid/content/Context;

    iput-object v0, p0, Lr0/G;->a:Landroid/content/Context;

    sget-object v1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v1, p0, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    if-eqz v0, :cond_0

    sget-object v2, Lr0/b;->c:Lr0/b;

    sget v2, Lk0/C;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lr0/b;->c(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lr0/A;->b:Lr0/b;

    :goto_0
    iput-object v0, p0, Lr0/G;->x:Lr0/b;

    iget-object v0, p1, Lr0/A;->c:Lr0/C;

    iput-object v0, p0, Lr0/G;->b:Lr0/C;

    iget-boolean v0, p1, Lr0/A;->d:Z

    iput-boolean v0, p0, Lr0/G;->c:Z

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-boolean v0, p1, Lr0/A;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lr0/G;->j:Z

    iput v2, p0, Lr0/G;->k:I

    iget-object v0, p1, Lr0/A;->g:Lr0/H;

    iput-object v0, p0, Lr0/G;->o:Lr0/H;

    iget-object v0, p1, Lr0/A;->i:Lr0/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lr0/G;->p:Lr0/y;

    new-instance v0, Lr0/v;

    new-instance v1, Lcom/bumptech/glide/f;

    const/16 v3, 0x16

    invoke-direct {v1, v3, p0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lr0/v;-><init>(Lcom/bumptech/glide/f;)V

    iput-object v0, p0, Lr0/G;->h:Lr0/v;

    new-instance v0, Lr0/w;

    invoke-direct {v0}, Li0/e;-><init>()V

    iput-object v0, p0, Lr0/G;->d:Lr0/w;

    new-instance v1, Lr0/O;

    invoke-direct {v1}, Li0/e;-><init>()V

    sget-object v3, Lk0/C;->f:[B

    iput-object v3, v1, Lr0/O;->m:[B

    iput-object v1, p0, Lr0/G;->e:Lr0/O;

    new-instance v3, Li0/h;

    invoke-direct {v3}, Li0/e;-><init>()V

    sget-object v4, Lp3/H;->q:Lp3/F;

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lp3/q;->b(I[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lp3/H;->h(I[Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    iput-object v0, p0, Lr0/G;->f:Lp3/Y;

    new-instance v0, Lr0/N;

    invoke-direct {v0}, Li0/e;-><init>()V

    invoke-static {v0}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    iput-object v0, p0, Lr0/G;->g:Lp3/Y;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lr0/G;->P:F

    iput v2, p0, Lr0/G;->Y:I

    new-instance v0, Landroidx/media3/common/AuxEffectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/AuxEffectInfo;-><init>(IF)V

    iput-object v0, p0, Lr0/G;->Z:Landroidx/media3/common/AuxEffectInfo;

    new-instance v3, Lr0/D;

    sget-object v4, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lr0/D;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iput-object v3, p0, Lr0/G;->C:Lr0/D;

    iput-object v4, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    iput-boolean v2, p0, Lr0/G;->E:Z

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lr0/G;->i:Ljava/util/ArrayDeque;

    new-instance v0, Ld2/j;

    invoke-direct {v0}, Ld2/j;-><init>()V

    iput-object v0, p0, Lr0/G;->m:Ld2/j;

    new-instance v0, Ld2/j;

    invoke-direct {v0}, Ld2/j;-><init>()V

    iput-object v0, p0, Lr0/G;->n:Ld2/j;

    iget-object p1, p1, Lr0/A;->h:Lr0/I;

    iput-object p1, p0, Lr0/G;->q:Lr0/I;

    return-void
.end method

.method public static q(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/D;->w(Landroid/media/AudioTrack;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 4

    iget-object v0, p0, Lr0/G;->Z:Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    iget v1, p1, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    iget-object v2, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lr0/G;->Z:Landroidx/media3/common/AuxEffectInfo;

    iget v3, v3, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    if-eq v3, v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_2
    iput-object p1, p0, Lr0/G;->Z:Landroidx/media3/common/AuxEffectInfo;

    return-void
.end method

.method public final B(Ljava/nio/ByteBuffer;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lk0/c;->j(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lr0/G;->u:Lr0/B;

    iget v1, v1, Lr0/B;->c:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Lk0/C;->Q(J)J

    move-result-wide v3

    iget-object v1, v0, Lr0/G;->u:Lr0/B;

    iget v1, v1, Lr0/B;->e:I

    int-to-long v5, v1

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Lr0/G;->l()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    :goto_1
    move-object/from16 v3, p1

    goto/16 :goto_8

    :cond_3
    iget-object v6, v0, Lr0/G;->u:Lr0/B;

    iget v7, v6, Lr0/B;->g:I

    iget v6, v6, Lr0/B;->d:I

    long-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_17

    if-ge v2, v1, :cond_17

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/high16 v16, 0x4f000000

    const/4 v9, 0x4

    const/high16 v17, -0x31000000

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_d

    if-eq v7, v10, :cond_c

    if-eq v7, v9, :cond_a

    if-eq v7, v15, :cond_9

    if-eq v7, v14, :cond_8

    if-eq v7, v13, :cond_7

    if-eq v7, v12, :cond_6

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    :goto_3
    or-int/2addr v12, v13

    goto/16 :goto_6

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    :goto_4
    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    goto :goto_3

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    goto :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Lk0/C;->h(FFF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_b

    neg-float v12, v12

    mul-float v12, v12, v17

    :goto_5
    float-to-int v12, v12

    goto :goto_6

    :cond_b
    mul-float v12, v12, v16

    goto :goto_5

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    goto :goto_4

    :goto_6
    int-to-long v12, v12

    int-to-long v9, v2

    mul-long/2addr v12, v9

    div-long/2addr v12, v4

    long-to-int v9, v12

    if-eq v7, v11, :cond_16

    const/4 v10, 0x3

    if-eq v7, v10, :cond_15

    const/4 v14, 0x4

    if-eq v7, v14, :cond_13

    if-eq v7, v15, :cond_12

    const/16 v10, 0x16

    if-eq v7, v10, :cond_11

    const/high16 v10, 0x10000000

    if-eq v7, v10, :cond_10

    const/high16 v10, 0x50000000

    if-eq v7, v10, :cond_f

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_e

    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_f
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-byte v10, v9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    if-gez v9, :cond_14

    int-to-float v9, v9

    neg-float v9, v9

    div-float v9, v9, v17

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_14
    int-to-float v9, v9

    div-float v9, v9, v16

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_15
    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_16
    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int v10, v8, v6

    if-ne v9, v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    goto/16 :goto_2

    :cond_17
    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_8
    iput-object v3, v0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final C(Landroidx/media3/common/PlaybackParameters;)V
    .locals 7

    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Lk0/C;->h(FFF)F

    move-result v1

    iget v4, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-static {v4, v2, v3}, Lk0/C;->h(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0}, Lr0/G;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr0/G;->z()V

    return-void

    :cond_0
    new-instance v1, Lr0/D;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lr0/D;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Lr0/G;->B:Lr0/D;

    return-void

    :cond_1
    iput-object v1, p0, Lr0/G;->C:Lr0/D;

    return-void
.end method

.method public final D(Landroidx/media3/common/Format;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lr0/G;->j(Landroidx/media3/common/Format;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final E()Z
    .locals 2

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lr0/B;->j:Z

    if-eqz v0, :cond_0

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(J)V
    .locals 14

    invoke-virtual {p0}, Lr0/G;->E()Z

    move-result v0

    const/4 v1, 0x4

    const/high16 v2, 0x60000000

    const/16 v3, 0x16

    const/high16 v4, 0x50000000

    const/16 v5, 0x15

    iget-boolean v6, p0, Lr0/G;->c:Z

    iget-object v7, p0, Lr0/G;->b:Lr0/C;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lr0/G;->b0:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    iget v8, v0, Lr0/B;->c:I

    if-nez v8, :cond_2

    iget-object v0, v0, Lr0/B;->a:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->pcmEncoding:I

    if-eqz v6, :cond_0

    sget v8, Lk0/C;->a:I

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    iget-object v8, v7, Lr0/C;->d:Ljava/lang/Object;

    check-cast v8, Li0/g;

    iget v9, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget v10, v8, Li0/g;->c:F

    cmpl-float v10, v10, v9

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    iput v9, v8, Li0/g;->c:F

    iput-boolean v11, v8, Li0/g;->i:Z

    :cond_1
    iget v9, v0, Landroidx/media3/common/PlaybackParameters;->pitch:F

    iget v10, v8, Li0/g;->d:F

    cmpl-float v10, v10, v9

    if-eqz v10, :cond_3

    iput v9, v8, Li0/g;->d:F

    iput-boolean v11, v8, Li0/g;->i:Z

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :cond_3
    :goto_1
    iput-object v0, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    :goto_2
    move-object v9, v0

    goto :goto_3

    :cond_4
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_2

    :goto_3
    iget-boolean v0, p0, Lr0/G;->b0:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    iget v8, v0, Lr0/B;->c:I

    if-nez v8, :cond_6

    iget-object v0, v0, Lr0/B;->a:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->pcmEncoding:I

    if-eqz v6, :cond_5

    sget v6, Lk0/C;->a:I

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v0, p0, Lr0/G;->E:Z

    iget-object v1, v7, Lr0/C;->c:Ljava/lang/Object;

    check-cast v1, Lr0/M;

    iput-boolean v0, v1, Lr0/M;->o:Z

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lr0/G;->E:Z

    new-instance v8, Lr0/D;

    const-wide/16 v0, 0x0

    move-wide v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    invoke-virtual {p0}, Lr0/G;->l()J

    move-result-wide v1

    iget v0, v0, Lr0/B;->e:I

    invoke-static {v0, v1, v2}, Lk0/C;->W(IJ)J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Lr0/D;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iget-object v0, p0, Lr0/G;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    iget-object v0, v0, Lr0/B;->i:Li0/a;

    iput-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->a()V

    iget-object v0, p0, Lr0/G;->s:Lr0/p;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lr0/G;->E:Z

    invoke-interface {v0, v1}, Lr0/p;->onSkipSilenceEnabledChanged(Z)V

    :cond_7
    return-void
.end method

.method public final b(Lr0/m;Landroidx/media3/common/AudioAttributes;ILandroidx/media3/common/Format;)Landroid/media/AudioTrack;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lr0/G;->q:Lr0/I;

    invoke-virtual {v0, p1, p2, p3}, Lr0/I;->a(Lr0/m;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p3, 0x1

    if-ne v1, p3, :cond_0

    return-object p2

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Lr0/o;

    iget v2, p1, Lr0/m;->b:I

    iget v3, p1, Lr0/m;->c:I

    iget v4, p1, Lr0/m;->a:I

    iget-boolean v6, p1, Lr0/m;->e:Z

    const/4 v7, 0x0

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lr0/o;-><init>(IIIILandroidx/media3/common/Format;ZLjava/lang/RuntimeException;)V

    throw v0

    :catch_1
    move-exception v0

    :goto_0
    move-object v5, p4

    move-object p2, v0

    move-object v8, p2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :goto_1
    new-instance v1, Lr0/o;

    iget v3, p1, Lr0/m;->b:I

    iget v4, p1, Lr0/m;->c:I

    move-object v6, v5

    iget v5, p1, Lr0/m;->a:I

    iget-boolean v7, p1, Lr0/m;->e:Z

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lr0/o;-><init>(IIIILandroidx/media3/common/Format;ZLjava/lang/RuntimeException;)V

    throw v1
.end method

.method public final c(Lr0/B;)Landroid/media/AudioTrack;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lr0/B;->a()Lr0/m;

    move-result-object v0

    iget-object v1, p0, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    iget v2, p0, Lr0/G;->Y:I

    iget-object p1, p1, Lr0/B;->a:Landroidx/media3/common/Format;

    invoke-virtual {p0, v0, v1, v2, p1}, Lr0/G;->b(Lr0/m;Landroidx/media3/common/AudioAttributes;ILandroidx/media3/common/Format;)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Lr0/o; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lr0/G;->s:Lr0/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr0/p;->onAudioSinkError(Ljava/lang/Exception;)V

    :cond_0
    throw p1
.end method

.method public final d(Landroidx/media3/common/Format;[I)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual {v1}, Lr0/G;->r()V

    const-string v0, "audio/raw"

    iget-object v2, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v4, v1, Lr0/G;->j:Z

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_6

    iget v0, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {v0}, Lk0/C;->L(I)Z

    move-result v0

    invoke-static {v0}, Lk0/c;->d(Z)V

    iget v0, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v8, v3, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v0, v8}, Lk0/C;->B(II)I

    move-result v0

    new-instance v8, Lp3/E;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/play_billing/w;-><init>(I)V

    iget v10, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    iget-boolean v11, v1, Lr0/G;->c:Z

    if-eqz v11, :cond_1

    const/16 v11, 0x15

    if-eq v10, v11, :cond_0

    const/high16 v11, 0x50000000

    if-eq v10, v11, :cond_0

    const/16 v11, 0x16

    if-eq v10, v11, :cond_0

    const/high16 v11, 0x60000000

    if-eq v10, v11, :cond_0

    if-ne v10, v9, :cond_1

    :cond_0
    iget-object v9, v1, Lr0/G;->g:Lp3/Y;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    iget-object v9, v1, Lr0/G;->f:Lp3/Y;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V

    iget-object v9, v1, Lr0/G;->b:Lr0/C;

    iget-object v9, v9, Lr0/C;->b:Ljava/lang/Object;

    check-cast v9, [Li0/d;

    array-length v10, v9

    invoke-static {v10, v9}, Lp3/q;->b(I[Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/play_billing/w;->d(I)V

    iget-object v11, v8, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    iget v12, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    invoke-static {v9, v7, v11, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    :goto_0
    new-instance v9, Li0/a;

    invoke-virtual {v8}, Lp3/E;->i()Lp3/Y;

    move-result-object v8

    invoke-direct {v9, v8}, Li0/a;-><init>(Lp3/H;)V

    iget-object v8, v1, Lr0/G;->v:Li0/a;

    invoke-virtual {v9, v8}, Li0/a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v9, v1, Lr0/G;->v:Li0/a;

    :cond_2
    iget v8, v3, Landroidx/media3/common/Format;->encoderDelay:I

    iget v10, v3, Landroidx/media3/common/Format;->encoderPadding:I

    iget-object v11, v1, Lr0/G;->e:Lr0/O;

    iput v8, v11, Lr0/O;->i:I

    iput v10, v11, Lr0/O;->j:I

    iget-object v8, v1, Lr0/G;->d:Lr0/w;

    move-object/from16 v10, p2

    iput-object v10, v8, Lr0/w;->i:[I

    new-instance v8, Li0/b;

    iget v10, v3, Landroidx/media3/common/Format;->sampleRate:I

    iget v11, v3, Landroidx/media3/common/Format;->channelCount:I

    iget v12, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-direct {v8, v10, v11, v12}, Li0/b;-><init>(III)V

    :try_start_0
    iget-object v10, v9, Li0/a;->a:Lp3/H;

    sget-object v11, Li0/b;->e:Li0/b;

    invoke-virtual {v8, v11}, Li0/b;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    move v11, v7

    :goto_1
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li0/d;

    invoke-interface {v12, v8}, Li0/d;->e(Li0/b;)Li0/b;

    move-result-object v13

    invoke-interface {v12}, Li0/d;->a()Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v8, Li0/b;->e:Li0/b;

    invoke-virtual {v13, v8}, Li0/b;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    invoke-static {v8}, Lk0/c;->j(Z)V
    :try_end_0
    .catch Li0/c; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v13

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    iget v10, v8, Li0/b;->b:I

    iget v11, v8, Li0/b;->c:I

    iget v8, v8, Li0/b;->a:I

    invoke-static {v10}, Lk0/C;->r(I)I

    move-result v12

    invoke-static {v11, v10}, Lk0/C;->B(II)I

    move-result v10

    move v13, v4

    move v4, v0

    move v0, v12

    move v12, v13

    move v13, v11

    move-object v11, v9

    move v9, v13

    move v13, v7

    move v14, v13

    goto/16 :goto_3

    :cond_5
    :try_start_1
    new-instance v0, Li0/c;

    invoke-direct {v0, v8}, Li0/c;-><init>(Li0/b;)V

    throw v0
    :try_end_1
    .catch Li0/c; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lr0/n;

    invoke-direct {v2, v0, v3}, Lr0/n;-><init>(Li0/c;Landroidx/media3/common/Format;)V

    throw v2

    :cond_6
    new-instance v9, Li0/a;

    sget-object v0, Lp3/H;->q:Lp3/F;

    sget-object v0, Lp3/Y;->t:Lp3/Y;

    invoke-direct {v9, v0}, Li0/a;-><init>(Lp3/H;)V

    iget v8, v3, Landroidx/media3/common/Format;->sampleRate:I

    iget v0, v1, Lr0/G;->k:I

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p1}, Lr0/G;->i(Landroidx/media3/common/Format;)Lr0/f;

    move-result-object v0

    goto :goto_2

    :cond_7
    sget-object v0, Lr0/f;->d:Lr0/f;

    :goto_2
    iget v10, v1, Lr0/G;->k:I

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lr0/f;->a:Z

    if-eqz v10, :cond_8

    iget-object v4, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v4, v10}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iget v4, v3, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v4}, Lk0/C;->r(I)I

    move-result v12

    iget-boolean v0, v0, Lr0/f;->b:Z

    move v4, v11

    move-object v11, v9

    move v9, v4

    move v13, v0

    move v14, v5

    move v4, v6

    move v10, v4

    move v0, v12

    move v12, v14

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lr0/G;->x:Lr0/b;

    iget-object v10, v1, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, v10, v3}, Lr0/b;->d(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v0, v11

    move-object v11, v9

    move v9, v0

    move v10, v6

    move v13, v7

    move v0, v12

    const/4 v14, 0x2

    move v12, v4

    move v4, v10

    :goto_3
    const-string v15, ") for: "

    if-eqz v9, :cond_19

    if-eqz v0, :cond_18

    iget v15, v3, Landroidx/media3/common/Format;->bitrate:I

    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    iget-object v2, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-ne v15, v6, :cond_9

    const v15, 0xbb800

    :cond_9
    invoke-static {v8, v0, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    const/4 v7, -0x2

    if-eq v2, v7, :cond_a

    move v7, v5

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, Lk0/c;->j(Z)V

    if-eq v10, v6, :cond_b

    move v7, v10

    goto :goto_5

    :cond_b
    move v7, v5

    :goto_5
    if-eqz v12, :cond_c

    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    goto :goto_6

    :cond_c
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    :goto_6
    iget-object v6, v1, Lr0/G;->o:Lr0/H;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v20, 0xf4240

    if-eqz v14, :cond_16

    if-eq v14, v5, :cond_15

    move/from16 v22, v5

    const/4 v5, 0x2

    if-ne v14, v5, :cond_14

    const/4 v5, 0x5

    const/16 v6, 0x8

    if-ne v9, v5, :cond_d

    const v5, 0x7a120

    :goto_7
    move/from16 v16, v6

    :goto_8
    const/4 v6, -0x1

    goto :goto_9

    :cond_d
    if-ne v9, v6, :cond_e

    const v5, 0xf4240

    goto :goto_7

    :cond_e
    move/from16 v16, v6

    const v5, 0x3d090

    goto :goto_8

    :goto_9
    if-eq v15, v6, :cond_13

    sget-object v6, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v19, v15, 0x8

    mul-int v23, v16, v19

    sub-int v23, v15, v23

    if-nez v23, :cond_f

    goto :goto_b

    :cond_f
    xor-int/lit8 v15, v15, 0x8

    shr-int/lit8 v15, v15, 0x1f

    or-int/lit8 v15, v15, 0x1

    sget-object v24, Lr3/d;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v24, v6

    packed-switch v6, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    sub-int v16, v16, v6

    sub-int v6, v6, v16

    if-nez v6, :cond_10

    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_b

    :cond_10
    if-lez v6, :cond_11

    goto :goto_a

    :pswitch_1
    if-lez v15, :cond_11

    goto :goto_a

    :pswitch_2
    if-gez v15, :cond_11

    :goto_a
    :pswitch_3
    add-int v19, v19, v15

    goto :goto_b

    :pswitch_4
    if-nez v23, :cond_12

    :cond_11
    :goto_b
    :pswitch_5
    move/from16 v16, v4

    move/from16 v6, v19

    goto :goto_c

    :cond_12
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v2, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static {v9}, Lr0/H;->a(I)I

    move-result v19

    goto :goto_b

    :goto_c
    int-to-long v3, v5

    int-to-long v5, v6

    mul-long/2addr v3, v5

    div-long v3, v3, v20

    invoke-static {v3, v4}, La/a;->f(J)I

    move-result v3

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
    move/from16 v16, v4

    move/from16 v22, v5

    invoke-static {v9}, Lr0/H;->a(I)I

    move-result v3

    const v4, 0x2faf080

    int-to-long v4, v4

    move-wide/from16 v23, v4

    int-to-long v3, v3

    mul-long v4, v23, v3

    div-long v4, v4, v20

    invoke-static {v4, v5}, La/a;->f(J)I

    move-result v3

    goto :goto_d

    :cond_16
    move/from16 v16, v4

    move/from16 v22, v5

    mul-int/lit8 v3, v2, 0x4

    const v4, 0x3d090

    int-to-long v4, v4

    move-wide/from16 v23, v4

    int-to-long v4, v8

    mul-long v23, v23, v4

    move-wide/from16 v25, v4

    int-to-long v4, v7

    mul-long v23, v23, v4

    div-long v23, v23, v20

    invoke-static/range {v23 .. v24}, La/a;->f(J)I

    move-result v6

    const v15, 0xb71b0

    move-wide/from16 v23, v4

    int-to-long v4, v15

    mul-long v4, v4, v25

    mul-long v4, v4, v23

    div-long v4, v4, v20

    invoke-static {v4, v5}, La/a;->f(J)I

    move-result v4

    invoke-static {v3, v6, v4}, Lk0/C;->i(III)I

    move-result v3

    :goto_d
    int-to-double v3, v3

    mul-double v3, v3, v17

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v7

    mul-int/2addr v2, v7

    const/4 v3, 0x0

    iput-boolean v3, v1, Lr0/G;->e0:Z

    move v6, v10

    move v10, v2

    new-instance v2, Lr0/B;

    move v5, v14

    iget-boolean v14, v1, Lr0/G;->b0:Z

    move-object/from16 v3, p1

    move v7, v8

    move/from16 v4, v16

    move v8, v0

    invoke-direct/range {v2 .. v14}, Lr0/B;-><init>(Landroidx/media3/common/Format;IIIIIIILi0/a;ZZZ)V

    invoke-virtual {v1}, Lr0/G;->p()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v2, v1, Lr0/G;->t:Lr0/B;

    return-void

    :cond_17
    iput-object v2, v1, Lr0/G;->u:Lr0/B;

    return-void

    :cond_18
    move v5, v14

    new-instance v0, Lr0/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid output channel config (mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lr0/n;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    :cond_19
    move v5, v14

    new-instance v0, Lr0/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid output encoding (mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lr0/n;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    :cond_1a
    new-instance v0, Lr0/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to configure passthrough for: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lr0/n;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(J)V
    .locals 12

    iget-object v0, p0, Lr0/G;->n:Ld2/j;

    iget-object v1, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, v0, Ld2/j;->c:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lr0/G;->k0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v4, Lr0/G;->m0:I

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Ld2/j;->b:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    :goto_1
    iget-object v1, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iget-boolean v1, p0, Lr0/G;->b0:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_d

    cmp-long v1, p1, v10

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-static {v1}, Lk0/c;->j(Z)V

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, p1, v4

    if-nez v1, :cond_6

    iget-wide p1, p0, Lr0/G;->c0:J

    goto :goto_3

    :cond_6
    iput-wide p1, p0, Lr0/G;->c0:J

    :goto_3
    iget-object v4, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v5, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    sget v1, Lk0/C;->a:I

    const/16 v7, 0x1a

    const-wide/16 v8, 0x3e8

    if-lt v1, v7, :cond_7

    const/4 v7, 0x1

    mul-long/2addr v8, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_8

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    const v7, 0x55550001

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_8
    iget v1, p0, Lr0/G;->G:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    const/16 v7, 0x8

    mul-long/2addr p1, v8

    invoke-virtual {v1, v7, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v6, p0, Lr0/G;->G:I

    :cond_9
    iget-object p1, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-lez p1, :cond_b

    iget-object p2, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p2, p1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_a

    iput v2, p0, Lr0/G;->G:I

    move p1, p2

    goto :goto_4

    :cond_a
    if-ge p2, p1, :cond_b

    move p1, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_c

    iput v2, p0, Lr0/G;->G:I

    goto :goto_4

    :cond_c
    iget p2, p0, Lr0/G;->G:I

    sub-int/2addr p2, p1

    iput p2, p0, Lr0/G;->G:I

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object p2, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v6, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lr0/G;->d0:J

    const-wide/16 v4, 0x0

    if-gez p1, :cond_15

    sget p2, Lk0/C;->a:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_e

    const/4 p2, -0x6

    if-eq p1, p2, :cond_f

    :cond_e
    const/16 p2, -0x20

    if-ne p1, p2, :cond_12

    :cond_f
    invoke-virtual {p0}, Lr0/G;->l()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_11

    :cond_10
    :goto_5
    move v2, v3

    goto :goto_6

    :cond_11
    iget-object p2, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {p2}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lr0/G;->u:Lr0/B;

    iget p2, p2, Lr0/B;->c:I

    if-ne p2, v3, :cond_10

    iput-boolean v3, p0, Lr0/G;->e0:Z

    goto :goto_5

    :cond_12
    :goto_6
    new-instance p2, Lr0/r;

    iget-object v1, p0, Lr0/G;->u:Lr0/B;

    iget-object v1, v1, Lr0/B;->a:Landroidx/media3/common/Format;

    invoke-direct {p2, p1, v1, v2}, Lr0/r;-><init>(ILandroidx/media3/common/Format;Z)V

    iget-object p1, p0, Lr0/G;->s:Lr0/p;

    if-eqz p1, :cond_13

    invoke-interface {p1, p2}, Lr0/p;->onAudioSinkError(Ljava/lang/Exception;)V

    :cond_13
    iget-boolean p1, p2, Lr0/r;->q:Z

    if-nez p1, :cond_14

    invoke-virtual {v0, p2}, Ld2/j;->e(Ljava/lang/Exception;)V

    return-void

    :cond_14
    sget-object p1, Lr0/b;->c:Lr0/b;

    iput-object p1, p0, Lr0/G;->x:Lr0/b;

    throw p2

    :cond_15
    const/4 p2, 0x0

    iput-object p2, v0, Ld2/j;->c:Ljava/io/Serializable;

    iput-wide v10, v0, Ld2/j;->a:J

    iput-wide v10, v0, Ld2/j;->b:J

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v0}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lr0/G;->K:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_16

    iput-boolean v2, p0, Lr0/G;->f0:Z

    :cond_16
    iget-boolean v0, p0, Lr0/G;->W:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lr0/G;->s:Lr0/p;

    if-eqz v0, :cond_17

    if-ge p1, v6, :cond_17

    iget-boolean v1, p0, Lr0/G;->f0:Z

    if-nez v1, :cond_17

    invoke-interface {v0}, Lr0/p;->n()V

    :cond_17
    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    iget v0, v0, Lr0/B;->c:I

    if-nez v0, :cond_18

    iget-wide v4, p0, Lr0/G;->J:J

    int-to-long v7, p1

    add-long/2addr v4, v7

    iput-wide v4, p0, Lr0/G;->J:J

    :cond_18
    if-ne p1, v6, :cond_1b

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_19

    move v2, v3

    :cond_19
    invoke-static {v2}, Lk0/c;->j(Z)V

    iget-wide v0, p0, Lr0/G;->K:J

    iget p1, p0, Lr0/G;->L:I

    int-to-long v2, p1

    iget p1, p0, Lr0/G;->R:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lr0/G;->K:J

    :cond_1a
    iput-object p2, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    :cond_1b
    :goto_7
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f()Z
    .locals 6

    iget-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->d()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lr0/G;->e(J)V

    iget-object v0, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Li0/a;->d:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v4, v0, Li0/a;->d:Z

    iget-object v0, v0, Li0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/d;

    invoke-interface {v0}, Li0/d;->d()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v2}, Lr0/G;->w(J)V

    iget-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v3
.end method

.method public final g()V
    .locals 11

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iput-wide v1, p0, Lr0/G;->H:J

    iput-wide v1, p0, Lr0/G;->I:J

    iput-wide v1, p0, Lr0/G;->J:J

    iput-wide v1, p0, Lr0/G;->K:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/G;->f0:Z

    iput v0, p0, Lr0/G;->L:I

    new-instance v4, Lr0/D;

    iget-object v5, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lr0/D;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    iput-object v4, p0, Lr0/G;->C:Lr0/D;

    iput-wide v1, p0, Lr0/G;->O:J

    iput-object v3, p0, Lr0/G;->B:Lr0/D;

    iget-object v4, p0, Lr0/G;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v3, p0, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    iput v0, p0, Lr0/G;->R:I

    iput-object v3, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lr0/G;->U:Z

    iput-boolean v0, p0, Lr0/G;->T:Z

    iput-boolean v0, p0, Lr0/G;->V:Z

    iput-object v3, p0, Lr0/G;->F:Ljava/nio/ByteBuffer;

    iput v0, p0, Lr0/G;->G:I

    iget-object v0, p0, Lr0/G;->e:Lr0/O;

    iput-wide v1, v0, Lr0/O;->o:J

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    iget-object v0, v0, Lr0/B;->i:Li0/a;

    iput-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->a()V

    iget-object v0, p0, Lr0/G;->h:Lr0/v;

    iget-object v0, v0, Lr0/v;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v0}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr0/G;->l:Lr0/C;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v5, v0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v5, Lr0/F;

    invoke-static {v4, v5}, Landroidx/lifecycle/D;->p(Landroid/media/AudioTrack;Lr0/F;)V

    iget-object v0, v0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    invoke-virtual {v0}, Lr0/B;->a()Lr0/m;

    move-result-object v8

    iget-object v0, p0, Lr0/G;->t:Lr0/B;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lr0/G;->u:Lr0/B;

    iput-object v3, p0, Lr0/G;->t:Lr0/B;

    :cond_2
    iget-object v0, p0, Lr0/G;->h:Lr0/v;

    invoke-virtual {v0}, Lr0/v;->d()V

    iput-object v3, v0, Lr0/v;->c:Landroid/media/AudioTrack;

    iput-object v3, v0, Lr0/v;->e:Lr0/u;

    sget v0, Lk0/C;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lr0/G;->z:Lr0/C;

    if-eqz v0, :cond_3

    iget-object v4, v0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v4, Landroid/media/AudioTrack;

    iget-object v5, v0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v5, Lr0/E;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    iput-object v3, v0, Lr0/C;->d:Ljava/lang/Object;

    iput-object v3, p0, Lr0/G;->z:Lr0/C;

    :cond_3
    iget-object v5, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v6, p0, Lr0/G;->s:Lr0/p;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v10, Lr0/G;->k0:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lr0/G;->l0:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_4

    new-instance v0, Lk0/B;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lr0/G;->l0:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    sget v0, Lr0/G;->m0:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lr0/G;->m0:I

    sget-object v0, Lr0/G;->l0:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, LG3/n;

    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, LG3/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x14

    invoke-interface {v0, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_2
    iget-object v0, p0, Lr0/G;->n:Ld2/j;

    iput-object v3, v0, Ld2/j;->c:Ljava/io/Serializable;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Ld2/j;->a:J

    iput-wide v4, v0, Ld2/j;->b:J

    iget-object v0, p0, Lr0/G;->m:Ld2/j;

    iput-object v3, v0, Ld2/j;->c:Ljava/io/Serializable;

    iput-wide v4, v0, Ld2/j;->a:J

    iput-wide v4, v0, Ld2/j;->b:J

    iput-wide v1, p0, Lr0/G;->h0:J

    iput-wide v1, p0, Lr0/G;->i0:J

    iget-object v0, p0, Lr0/G;->j0:Landroid/os/Handler;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final h(Z)J
    .locals 12

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lr0/G;->N:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lr0/G;->h:Lr0/v;

    invoke-virtual {v0, p1}, Lr0/v;->a(Z)J

    move-result-wide v0

    iget-object p1, p0, Lr0/G;->u:Lr0/B;

    invoke-virtual {p0}, Lr0/G;->l()J

    move-result-wide v2

    iget p1, p1, Lr0/B;->e:I

    invoke-static {p1, v2, v3}, Lk0/C;->W(IJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lr0/G;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/D;

    iget-wide v2, v2, Lr0/D;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr0/D;

    iput-object p1, p0, Lr0/G;->C:Lr0/D;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lr0/G;->C:Lr0/D;

    iget-wide v3, v2, Lr0/D;->c:J

    sub-long v5, v0, v3

    iget-object v0, v2, Lr0/D;->a:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {v5, v6, v0}, Lk0/C;->x(JF)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    iget-object v2, p0, Lr0/G;->b:Lr0/C;

    if-eqz p1, :cond_5

    iget-object p1, v2, Lr0/C;->d:Ljava/lang/Object;

    check-cast p1, Li0/g;

    invoke-virtual {p1}, Li0/g;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, p1, Li0/g;->o:J

    const-wide/16 v7, 0x400

    cmp-long v3, v3, v7

    if-ltz v3, :cond_3

    iget-wide v3, p1, Li0/g;->n:J

    iget-object v7, p1, Li0/g;->j:Li0/f;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Li0/f;->k:I

    iget v7, v7, Li0/f;->b:I

    mul-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x2

    int-to-long v7, v8

    sub-long v7, v3, v7

    iget-object v3, p1, Li0/g;->h:Li0/b;

    iget v3, v3, Li0/b;->a:I

    iget-object v4, p1, Li0/g;->g:Li0/b;

    iget v4, v4, Li0/b;->a:I

    if-ne v3, v4, :cond_2

    iget-wide v9, p1, Li0/g;->o:J

    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v5 .. v11}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    goto :goto_1

    :cond_2
    int-to-long v9, v3

    mul-long/2addr v7, v9

    iget-wide v9, p1, Li0/g;->o:J

    int-to-long v3, v4

    mul-long/2addr v9, v3

    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v5 .. v11}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    goto :goto_1

    :cond_3
    iget p1, p1, Li0/g;->c:F

    float-to-double v3, p1

    long-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-long v5, v3

    :cond_4
    :goto_1
    iget-object p1, p0, Lr0/G;->C:Lr0/D;

    iget-wide v3, p1, Lr0/D;->b:J

    add-long/2addr v3, v5

    sub-long/2addr v5, v0

    iput-wide v5, p1, Lr0/D;->d:J

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lr0/G;->C:Lr0/D;

    iget-wide v3, p1, Lr0/D;->b:J

    add-long/2addr v3, v0

    iget-wide v0, p1, Lr0/D;->d:J

    add-long/2addr v3, v0

    :goto_2
    iget-object p1, v2, Lr0/C;->c:Ljava/lang/Object;

    check-cast p1, Lr0/M;

    iget-wide v0, p1, Lr0/M;->q:J

    iget-object p1, p0, Lr0/G;->u:Lr0/B;

    iget p1, p1, Lr0/B;->e:I

    invoke-static {p1, v0, v1}, Lk0/C;->W(IJ)J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-wide v2, p0, Lr0/G;->h0:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    iget-object p1, p0, Lr0/G;->u:Lr0/B;

    sub-long v2, v0, v2

    iget p1, p1, Lr0/B;->e:I

    invoke-static {p1, v2, v3}, Lk0/C;->W(IJ)J

    move-result-wide v2

    iput-wide v0, p0, Lr0/G;->h0:J

    iget-wide v0, p0, Lr0/G;->i0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lr0/G;->i0:J

    iget-object p1, p0, Lr0/G;->j0:Landroid/os/Handler;

    if-nez p1, :cond_6

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lr0/G;->j0:Landroid/os/Handler;

    :cond_6
    iget-object p1, p0, Lr0/G;->j0:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/G;->j0:Landroid/os/Handler;

    new-instance v0, LB4/l;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-wide v5

    :cond_8
    :goto_3
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final i(Landroidx/media3/common/Format;)Lr0/f;
    .locals 7

    iget-boolean v0, p0, Lr0/G;->e0:Z

    if-eqz v0, :cond_0

    sget-object p1, Lr0/f;->d:Lr0/f;

    return-object p1

    :cond_0
    iget-object v0, p0, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    iget-object v1, p0, Lr0/G;->p:Lr0/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lk0/C;->a:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_d

    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, v1, Lr0/y;->a:Landroid/content/Context;

    iget-object v4, v1, Lr0/y;->b:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_5

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    if-eqz v3, :cond_4

    const-string v4, "offloadVariableRateSupported"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "offloadVariableRateSupported=1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lr0/y;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lr0/y;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lr0/y;->b:Ljava/lang/Boolean;

    :goto_1
    iget-object v1, v1, Lr0/y;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Lk0/C;->p(I)I

    move-result v4

    if-ge v2, v4, :cond_6

    goto :goto_3

    :cond_6
    iget v4, p1, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v4}, Lk0/C;->r(I)I

    move-result v4

    if-nez v4, :cond_7

    sget-object p1, Lr0/f;->d:Lr0/f;

    return-object p1

    :cond_7
    :try_start_0
    iget p1, p1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {p1, v4, v3}, Lk0/C;->q(III)Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_a

    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1, v0}, Lq0/n;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lr0/f;->d:Lr0/f;

    return-object p1

    :cond_8
    new-instance v0, LK1/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x20

    if-le v2, v3, :cond_9

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    move v5, v6

    :cond_9
    iput-boolean v6, v0, LK1/j;->a:Z

    iput-boolean v5, v0, LK1/j;->b:Z

    iput-boolean v1, v0, LK1/j;->c:Z

    invoke-virtual {v0}, LK1/j;->a()Lr0/f;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1, v0}, Landroidx/lifecycle/D;->A(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lr0/f;->d:Lr0/f;

    return-object p1

    :cond_b
    new-instance p1, LK1/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p1, LK1/j;->a:Z

    iput-boolean v1, p1, LK1/j;->c:Z

    invoke-virtual {p1}, LK1/j;->a()Lr0/f;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, Lr0/f;->d:Lr0/f;

    return-object p1

    :cond_c
    :goto_3
    sget-object p1, Lr0/f;->d:Lr0/f;

    return-object p1

    :cond_d
    :goto_4
    sget-object p1, Lr0/f;->d:Lr0/f;

    return-object p1
.end method

.method public final j(Landroidx/media3/common/Format;)I
    .locals 4

    invoke-virtual {p0}, Lr0/G;->r()V

    const-string v0, "audio/raw"

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {v0}, Lk0/C;->L(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid PCM encoding: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget p1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    if-eq p1, v2, :cond_2

    iget-boolean v0, p0, Lr0/G;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v0, p0, Lr0/G;->x:Lr0/b;

    iget-object v3, p0, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, v3, p1}, Lr0/b;->d(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final k()J
    .locals 5

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    iget v1, v0, Lr0/B;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lr0/G;->H:J

    iget v0, v0, Lr0/B;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Lr0/G;->I:J

    return-wide v0
.end method

.method public final l()J
    .locals 7

    iget-object v0, p0, Lr0/G;->u:Lr0/B;

    iget v1, v0, Lr0/B;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lr0/G;->J:J

    iget v0, v0, Lr0/B;->d:I

    int-to-long v3, v0

    sget v0, Lk0/C;->a:I

    add-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Lr0/G;->K:J

    return-wide v0
.end method

.method public final m(Ljava/nio/ByteBuffer;JI)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v1, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Lk0/c;->d(Z)V

    iget-object v5, v1, Lr0/G;->t:Lr0/B;

    const/4 v8, 0x3

    iget-object v9, v1, Lr0/G;->h:Lr0/v;

    const/4 v10, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lr0/G;->f()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    move/from16 v21, v7

    goto/16 :goto_1c

    :cond_2
    iget-object v5, v1, Lr0/G;->t:Lr0/B;

    iget-object v11, v1, Lr0/G;->u:Lr0/B;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v11, Lr0/B;->c:I

    iget v13, v5, Lr0/B;->c:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lr0/B;->g:I

    iget v13, v5, Lr0/B;->g:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lr0/B;->e:I

    iget v13, v5, Lr0/B;->e:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lr0/B;->f:I

    iget v13, v5, Lr0/B;->f:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lr0/B;->d:I

    iget v13, v5, Lr0/B;->d:I

    if-ne v12, v13, :cond_4

    iget-boolean v12, v11, Lr0/B;->j:Z

    iget-boolean v13, v5, Lr0/B;->j:Z

    if-ne v12, v13, :cond_4

    iget-boolean v11, v11, Lr0/B;->k:Z

    iget-boolean v5, v5, Lr0/B;->k:Z

    if-ne v11, v5, :cond_4

    iget-object v5, v1, Lr0/G;->t:Lr0/B;

    iput-object v5, v1, Lr0/G;->u:Lr0/B;

    iput-object v10, v1, Lr0/G;->t:Lr0/B;

    iget-object v5, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    if-eqz v5, :cond_6

    invoke-static {v5}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lr0/G;->u:Lr0/B;

    iget-boolean v5, v5, Lr0/B;->k:Z

    if-eqz v5, :cond_6

    iget-object v5, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v5}, Landroidx/lifecycle/D;->m(Landroid/media/AudioTrack;)V

    iput-boolean v6, v9, Lr0/v;->G:Z

    iget-object v5, v9, Lr0/v;->e:Lr0/u;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lr0/u;->a:Lr0/t;

    if-eqz v5, :cond_3

    iput-boolean v6, v5, Lr0/t;->f:Z

    :cond_3
    iget-object v5, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v11, v1, Lr0/G;->u:Lr0/B;

    iget-object v11, v11, Lr0/B;->a:Landroidx/media3/common/Format;

    iget v12, v11, Landroidx/media3/common/Format;->encoderDelay:I

    iget v11, v11, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-static {v5, v12, v11}, Landroidx/lifecycle/D;->n(Landroid/media/AudioTrack;II)V

    iput-boolean v6, v1, Lr0/G;->f0:Z

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lr0/G;->u()V

    invoke-virtual {v1}, Lr0/G;->n()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lr0/G;->g()V

    :cond_6
    :goto_3
    invoke-virtual {v1, v2, v3}, Lr0/G;->a(J)V

    :cond_7
    invoke-virtual {v1}, Lr0/G;->p()Z

    move-result v5

    iget-object v11, v1, Lr0/G;->m:Ld2/j;

    if-nez v5, :cond_9

    :try_start_0
    invoke-virtual {v1}, Lr0/G;->o()Z

    move-result v5
    :try_end_0
    .catch Lr0/o; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_9

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget-boolean v2, v0, Lr0/o;->q:Z

    if-nez v2, :cond_8

    invoke-virtual {v11, v0}, Ld2/j;->e(Ljava/lang/Exception;)V

    return v7

    :cond_8
    throw v0

    :cond_9
    iput-object v10, v11, Ld2/j;->c:Ljava/io/Serializable;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v11, Ld2/j;->a:J

    iput-wide v12, v11, Ld2/j;->b:J

    iget-boolean v5, v1, Lr0/G;->N:Z

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v12

    if-eqz v5, :cond_b

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lr0/G;->O:J

    iput-boolean v7, v1, Lr0/G;->M:Z

    iput-boolean v7, v1, Lr0/G;->N:Z

    invoke-virtual {v1}, Lr0/G;->E()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lr0/G;->z()V

    :cond_a
    invoke-virtual {v1, v2, v3}, Lr0/G;->a(J)V

    iget-boolean v5, v1, Lr0/G;->W:Z

    if-eqz v5, :cond_b

    invoke-virtual {v1}, Lr0/G;->t()V

    :cond_b
    invoke-virtual {v1}, Lr0/G;->l()J

    move-result-wide v11

    iget-object v5, v9, Lr0/v;->c:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    iget-boolean v13, v9, Lr0/v;->g:Z

    move-wide/from16 v18, v14

    const/4 v14, 0x2

    if-eqz v13, :cond_d

    if-ne v5, v14, :cond_c

    iput-boolean v7, v9, Lr0/v;->o:Z

    return v7

    :cond_c
    if-ne v5, v6, :cond_d

    invoke-virtual {v9}, Lr0/v;->b()J

    move-result-wide v20

    cmp-long v13, v20, v18

    if-nez v13, :cond_d

    goto/16 :goto_2

    :cond_d
    iget-boolean v13, v9, Lr0/v;->o:Z

    invoke-virtual {v9, v11, v12}, Lr0/v;->c(J)Z

    move-result v11

    iput-boolean v11, v9, Lr0/v;->o:Z

    if-eqz v13, :cond_e

    if-nez v11, :cond_e

    if-eq v5, v6, :cond_e

    iget-object v5, v9, Lr0/v;->a:Lcom/bumptech/glide/f;

    iget v11, v9, Lr0/v;->d:I

    iget-wide v12, v9, Lr0/v;->h:J

    invoke-static {v12, v13}, Lk0/C;->c0(J)J

    move-result-wide v22

    iget-object v5, v5, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v5, Lr0/G;

    iget-object v12, v5, Lr0/G;->s:Lr0/p;

    if-eqz v12, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move/from16 v21, v11

    iget-wide v10, v5, Lr0/G;->d0:J

    sub-long v24, v12, v10

    iget-object v5, v5, Lr0/G;->s:Lr0/p;

    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v25}, Lr0/p;->v(IJJ)V

    :cond_e
    iget-object v5, v1, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_38

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v10, :cond_f

    move v5, v6

    goto :goto_4

    :cond_f
    move v5, v7

    :goto_4
    invoke-static {v5}, Lk0/c;->d(Z)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_19

    :cond_10
    iget-object v5, v1, Lr0/G;->u:Lr0/B;

    iget v10, v5, Lr0/B;->c:I

    if-eqz v10, :cond_2f

    iget v10, v1, Lr0/G;->L:I

    if-nez v10, :cond_2f

    iget v5, v5, Lr0/B;->g:I

    const/16 v10, 0x14

    const/4 v11, 0x5

    if-eq v5, v10, :cond_2a

    const/16 v10, 0x1e

    const/4 v12, -0x2

    const/4 v13, -0x1

    if-eq v5, v10, :cond_22

    const/16 v10, 0xa

    packed-switch v5, :pswitch_data_0

    const/16 v14, 0x10

    packed-switch v5, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected audio encoding: "

    invoke-static {v5, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v5, v14, [B

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v8, LI0/N;

    invoke-direct {v8, v5, v14}, LI0/N;-><init>([BI)V

    invoke-static {v8}, LI0/e;->b(LI0/N;)LE2/d;

    move-result-object v5

    iget v13, v5, LE2/d;->c:I

    goto/16 :goto_18

    :cond_11
    :goto_5
    :pswitch_1
    const/16 v13, 0x400

    goto/16 :goto_18

    :pswitch_2
    const/16 v13, 0x200

    goto/16 :goto_18

    :pswitch_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v8

    sub-int/2addr v8, v10

    move v10, v5

    :goto_6
    if-gt v10, v8, :cond_14

    add-int/lit8 v11, v10, 0x4

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    move/from16 v21, v14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v14, v15, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v11}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v11

    :goto_7
    and-int/2addr v11, v12

    const v14, -0x78d9046

    if-ne v11, v14, :cond_13

    sub-int/2addr v10, v5

    goto :goto_8

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v21

    goto :goto_6

    :cond_14
    move/from16 v21, v14

    move v10, v13

    :goto_8
    if-ne v10, v13, :cond_15

    move v13, v7

    goto/16 :goto_18

    :cond_15
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbb

    if-ne v5, v8, :cond_16

    move v5, v6

    goto :goto_9

    :cond_16
    move v5, v7

    :goto_9
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v10

    if-eqz v5, :cond_17

    const/16 v5, 0x9

    goto :goto_a

    :cond_17
    const/16 v5, 0x8

    :goto_a
    add-int/2addr v8, v5

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    const/16 v8, 0x28

    shl-int v5, v8, v5

    mul-int/lit8 v13, v5, 0x10

    goto/16 :goto_18

    :pswitch_4
    const/16 v13, 0x800

    goto/16 :goto_18

    :pswitch_5
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v11, v12, :cond_18

    goto :goto_b

    :cond_18
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    :goto_b
    const/high16 v11, -0x200000

    and-int v12, v5, v11

    if-ne v12, v11, :cond_19

    ushr-int/lit8 v11, v5, 0x13

    and-int/2addr v11, v8

    if-ne v11, v6, :cond_1a

    :cond_19
    :goto_c
    move v5, v13

    goto :goto_d

    :cond_1a
    ushr-int/lit8 v12, v5, 0x11

    and-int/2addr v12, v8

    if-nez v12, :cond_1b

    goto :goto_c

    :cond_1b
    ushr-int/lit8 v15, v5, 0xc

    const/16 v7, 0xf

    and-int/2addr v15, v7

    ushr-int/2addr v5, v10

    and-int/2addr v5, v8

    if-eqz v15, :cond_19

    if-eq v15, v7, :cond_19

    if-ne v5, v8, :cond_1c

    goto :goto_c

    :cond_1c
    const/16 v5, 0x480

    if-eq v12, v6, :cond_1e

    if-eq v12, v14, :cond_20

    if-ne v12, v8, :cond_1d

    const/16 v5, 0x180

    goto :goto_d

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1e
    if-ne v11, v8, :cond_1f

    goto :goto_d

    :cond_1f
    const/16 v5, 0x240

    :cond_20
    :goto_d
    if-eq v5, v13, :cond_21

    move v13, v5

    goto/16 :goto_18

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    :pswitch_6
    move v5, v7

    goto :goto_f

    :pswitch_7
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v11

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xf8

    shr-int/2addr v5, v8

    if-le v5, v10, :cond_24

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    if-ne v5, v8, :cond_23

    goto :goto_e

    :cond_23
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v8, v5, 0x4

    :goto_e
    sget-object v5, LI0/c;->a:[I

    aget v5, v5, v8

    mul-int/lit16 v13, v5, 0x100

    goto/16 :goto_18

    :cond_24
    const/16 v13, 0x600

    goto/16 :goto_18

    :goto_f
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, -0xde4bec0

    if-eq v7, v8, :cond_11

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, -0x17bd3b8f

    if-ne v7, v8, :cond_25

    goto/16 :goto_5

    :cond_25
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v5, 0x25205864

    if-ne v7, v5, :cond_26

    const/16 v13, 0x1000

    goto/16 :goto_18

    :cond_26
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v7, v12, :cond_29

    if-eq v7, v13, :cond_28

    const/16 v8, 0x1f

    if-eq v7, v8, :cond_27

    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v11

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_10
    and-int/lit16 v5, v5, 0xfc

    :goto_11
    shr-int/2addr v5, v14

    or-int/2addr v5, v7

    goto :goto_13

    :cond_27
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_12
    and-int/lit8 v5, v5, 0x3c

    goto :goto_11

    :cond_28
    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_12

    :cond_29
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_10

    :goto_13
    add-int/2addr v5, v6

    mul-int/lit8 v13, v5, 0x20

    goto :goto_18

    :cond_2a
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/2addr v5, v14

    if-nez v5, :cond_2b

    const/4 v5, 0x0

    goto :goto_16

    :cond_2b
    const/16 v5, 0x1a

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v7, 0x1c

    move v10, v7

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v5, :cond_2c

    add-int/lit8 v11, v8, 0x1b

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_2c
    add-int/lit8 v5, v10, 0x1a

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v5, :cond_2d

    add-int/lit8 v11, v10, 0x1b

    add-int/2addr v11, v8

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    add-int/2addr v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_2d
    add-int v5, v10, v7

    :goto_16
    add-int/lit8 v7, v5, 0x1a

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v8

    sub-int/2addr v8, v7

    if-le v8, v6, :cond_2e

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    goto :goto_17

    :cond_2e
    const/4 v7, 0x0

    :goto_17
    invoke-static {v5, v7}, LI0/b;->g(BB)J

    move-result-wide v7

    const-wide/32 v10, 0xbb80

    mul-long/2addr v7, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v7, v10

    long-to-int v13, v7

    :goto_18
    iput v13, v1, Lr0/G;->L:I

    if-nez v13, :cond_2f

    :goto_19
    return v6

    :cond_2f
    iget-object v5, v1, Lr0/G;->B:Lr0/D;

    if-eqz v5, :cond_32

    invoke-virtual {v1}, Lr0/G;->f()Z

    move-result v5

    if-nez v5, :cond_31

    :cond_30
    :goto_1a
    const/16 v21, 0x0

    goto/16 :goto_1c

    :cond_31
    invoke-virtual {v1, v2, v3}, Lr0/G;->a(J)V

    const/4 v15, 0x0

    iput-object v15, v1, Lr0/G;->B:Lr0/D;

    :cond_32
    iget-wide v7, v1, Lr0/G;->O:J

    iget-object v5, v1, Lr0/G;->u:Lr0/B;

    invoke-virtual {v1}, Lr0/G;->k()J

    move-result-wide v10

    iget-object v12, v1, Lr0/G;->e:Lr0/O;

    iget-wide v12, v12, Lr0/O;->o:J

    sub-long/2addr v10, v12

    iget-object v5, v5, Lr0/B;->a:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v5, v10, v11}, Lk0/C;->W(IJ)J

    move-result-wide v10

    add-long/2addr v10, v7

    iget-boolean v5, v1, Lr0/G;->M:Z

    if-nez v5, :cond_34

    sub-long v7, v10, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v12, 0x30d40

    cmp-long v5, v7, v12

    if-lez v5, :cond_34

    iget-object v5, v1, Lr0/G;->s:Lr0/p;

    if-eqz v5, :cond_33

    new-instance v7, Lr0/q;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Unexpected audio track timestamp discontinuity: expected "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", got "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lr0/p;->onAudioSinkError(Ljava/lang/Exception;)V

    :cond_33
    iput-boolean v6, v1, Lr0/G;->M:Z

    :cond_34
    iget-boolean v5, v1, Lr0/G;->M:Z

    if-eqz v5, :cond_36

    invoke-virtual {v1}, Lr0/G;->f()Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_1a

    :cond_35
    sub-long v7, v2, v10

    iget-wide v10, v1, Lr0/G;->O:J

    add-long/2addr v10, v7

    iput-wide v10, v1, Lr0/G;->O:J

    const/4 v5, 0x0

    iput-boolean v5, v1, Lr0/G;->M:Z

    invoke-virtual {v1, v2, v3}, Lr0/G;->a(J)V

    iget-object v5, v1, Lr0/G;->s:Lr0/p;

    if-eqz v5, :cond_36

    cmp-long v7, v7, v18

    if-eqz v7, :cond_36

    invoke-interface {v5}, Lr0/p;->C()V

    :cond_36
    iget-object v5, v1, Lr0/G;->u:Lr0/B;

    iget v5, v5, Lr0/B;->c:I

    if-nez v5, :cond_37

    iget-wide v7, v1, Lr0/G;->H:J

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v7, v10

    iput-wide v7, v1, Lr0/G;->H:J

    goto :goto_1b

    :cond_37
    iget-wide v7, v1, Lr0/G;->I:J

    iget v5, v1, Lr0/G;->L:I

    int-to-long v10, v5

    int-to-long v12, v4

    mul-long/2addr v10, v12

    add-long/2addr v10, v7

    iput-wide v10, v1, Lr0/G;->I:J

    :goto_1b
    iput-object v0, v1, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    iput v4, v1, Lr0/G;->R:I

    :cond_38
    invoke-virtual {v1, v2, v3}, Lr0/G;->w(J)V

    iget-object v0, v1, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v15, 0x0

    iput-object v15, v1, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    iput v5, v1, Lr0/G;->R:I

    return v6

    :cond_39
    invoke-virtual {v1}, Lr0/G;->l()J

    move-result-wide v2

    iget-wide v4, v9, Lr0/v;->y:J

    cmp-long v0, v4, v16

    if-eqz v0, :cond_30

    cmp-long v0, v2, v18

    if-lez v0, :cond_30

    iget-object v0, v9, Lr0/v;->I:Lk0/d;

    check-cast v0, Lk0/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v9, Lr0/v;->y:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_30

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lr0/G;->g()V

    return v6

    :goto_1c
    return v21

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final n()Z
    .locals 3

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/lifecycle/D;->w(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr0/G;->V:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lr0/G;->h:Lr0/v;

    invoke-virtual {p0}, Lr0/G;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr0/v;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lr0/G;->m:Ld2/j;

    iget-object v2, v0, Ld2/j;->c:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/Exception;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lr0/G;->k0:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v5, Lr0/G;->m0:I

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Ld2/j;->b:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    :goto_1
    return v3

    :cond_3
    :goto_2
    :try_start_1
    iget-object v0, v1, Lr0/G;->u:Lr0/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lr0/G;->c(Lr0/B;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_1
    .catch Lr0/o; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lr0/G;->u:Lr0/B;

    iget v5, v0, Lr0/B;->h:I

    const v6, 0xf4240

    if-le v5, v6, :cond_10

    new-instance v7, Lr0/B;

    iget-object v8, v0, Lr0/B;->a:Landroidx/media3/common/Format;

    iget v9, v0, Lr0/B;->b:I

    iget v10, v0, Lr0/B;->c:I

    iget v11, v0, Lr0/B;->d:I

    iget v12, v0, Lr0/B;->e:I

    iget v13, v0, Lr0/B;->f:I

    iget v14, v0, Lr0/B;->g:I

    iget-object v5, v0, Lr0/B;->i:Li0/a;

    iget-boolean v6, v0, Lr0/B;->j:Z

    iget-boolean v15, v0, Lr0/B;->k:Z

    iget-boolean v0, v0, Lr0/B;->l:Z

    move/from16 v18, v15

    const v15, 0xf4240

    move/from16 v19, v0

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v7 .. v19}, Lr0/B;-><init>(Landroidx/media3/common/Format;IIIIIIILi0/a;ZZZ)V

    :try_start_2
    invoke-virtual {v1, v7}, Lr0/G;->c(Lr0/B;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v7, v1, Lr0/G;->u:Lr0/B;
    :try_end_2
    .catch Lr0/o; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iput-object v0, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v0}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v2, v1, Lr0/G;->l:Lr0/C;

    if-nez v2, :cond_4

    new-instance v2, Lr0/C;

    invoke-direct {v2, v1}, Lr0/C;-><init>(Lr0/G;)V

    iput-object v2, v1, Lr0/G;->l:Lr0/C;

    :cond_4
    iget-object v2, v1, Lr0/G;->l:Lr0/C;

    iget-object v5, v2, Lr0/C;->b:Ljava/lang/Object;

    check-cast v5, Landroid/os/Handler;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, LG0/j;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, LG0/j;-><init>(ILjava/lang/Object;)V

    iget-object v2, v2, Lr0/C;->c:Ljava/lang/Object;

    check-cast v2, Lr0/F;

    invoke-static {v0, v6, v2}, Landroidx/lifecycle/D;->o(Landroid/media/AudioTrack;LG0/j;Lr0/F;)V

    iget-object v0, v1, Lr0/G;->u:Lr0/B;

    iget-boolean v2, v0, Lr0/B;->k:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v0, v0, Lr0/B;->a:Landroidx/media3/common/Format;

    iget v5, v0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v0, v0, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-static {v2, v5, v0}, Landroidx/lifecycle/D;->n(Landroid/media/AudioTrack;II)V

    :cond_5
    sget v0, Lk0/C;->a:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_6

    iget-object v2, v1, Lr0/G;->r:Lq0/q;

    if-eqz v2, :cond_6

    iget-object v5, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v2, v2, Lq0/q;->b:Lq0/p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lq0/p;->a:Landroid/media/metrics/LogSessionId;

    invoke-static {}, LJ/c;->f()Landroid/media/metrics/LogSessionId;

    invoke-static {v2}, Lq0/n;->x(Landroid/media/metrics/LogSessionId;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5, v2}, Lq0/n;->o(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    :cond_6
    iget-object v2, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    iput v2, v1, Lr0/G;->Y:I

    iget-object v2, v1, Lr0/G;->h:Lr0/v;

    iget-object v5, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v6, v1, Lr0/G;->u:Lr0/B;

    iget v7, v6, Lr0/B;->c:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    move v7, v4

    goto :goto_4

    :cond_7
    move v7, v3

    :goto_4
    iget v8, v6, Lr0/B;->g:I

    iget v9, v6, Lr0/B;->d:I

    iget v6, v6, Lr0/B;->h:I

    iput-object v5, v2, Lr0/v;->c:Landroid/media/AudioTrack;

    iput v6, v2, Lr0/v;->d:I

    new-instance v10, Lr0/u;

    invoke-direct {v10, v5}, Lr0/u;-><init>(Landroid/media/AudioTrack;)V

    iput-object v10, v2, Lr0/v;->e:Lr0/u;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v5

    iput v5, v2, Lr0/v;->f:I

    const/16 v5, 0x17

    if-eqz v7, :cond_9

    if-ge v0, v5, :cond_9

    const/4 v7, 0x5

    if-eq v8, v7, :cond_8

    const/4 v7, 0x6

    if-ne v8, v7, :cond_9

    :cond_8
    move v7, v4

    goto :goto_5

    :cond_9
    move v7, v3

    :goto_5
    iput-boolean v7, v2, Lr0/v;->g:Z

    invoke-static {v8}, Lk0/C;->L(I)Z

    move-result v7

    iput-boolean v7, v2, Lr0/v;->p:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v7, :cond_a

    div-int/2addr v6, v9

    int-to-long v6, v6

    iget v8, v2, Lr0/v;->f:I

    invoke-static {v8, v6, v7}, Lk0/C;->W(IJ)J

    move-result-wide v6

    goto :goto_6

    :cond_a
    move-wide v6, v10

    :goto_6
    iput-wide v6, v2, Lr0/v;->h:J

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lr0/v;->s:J

    iput-wide v6, v2, Lr0/v;->t:J

    iput-boolean v3, v2, Lr0/v;->G:Z

    iput-wide v6, v2, Lr0/v;->H:J

    iput-wide v6, v2, Lr0/v;->u:J

    iput-boolean v3, v2, Lr0/v;->o:Z

    iput-wide v10, v2, Lr0/v;->x:J

    iput-wide v10, v2, Lr0/v;->y:J

    iput-wide v6, v2, Lr0/v;->q:J

    iput-wide v6, v2, Lr0/v;->n:J

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lr0/v;->i:F

    invoke-virtual {v1}, Lr0/G;->p()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget v3, v1, Lr0/G;->P:F

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_b
    iget-object v2, v1, Lr0/G;->Z:Landroidx/media3/common/AuxEffectInfo;

    iget v2, v2, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    if-eqz v2, :cond_c

    iget-object v3, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v3, v2}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    iget-object v2, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v3, v1, Lr0/G;->Z:Landroidx/media3/common/AuxEffectInfo;

    iget v3, v3, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_c
    iget-object v2, v1, Lr0/G;->a0:Lcom/bumptech/glide/f;

    if-eqz v2, :cond_d

    if-lt v0, v5, :cond_d

    iget-object v3, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget-object v2, v2, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v3, v2}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    iget-object v2, v1, Lr0/G;->y:Lr0/e;

    if-eqz v2, :cond_d

    iget-object v3, v1, Lr0/G;->a0:Lcom/bumptech/glide/f;

    iget-object v3, v3, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v3, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v2, v3}, Lr0/e;->b(Landroid/media/AudioDeviceInfo;)V

    :cond_d
    const/16 v2, 0x18

    if-lt v0, v2, :cond_e

    iget-object v0, v1, Lr0/G;->y:Lr0/e;

    if-eqz v0, :cond_e

    new-instance v2, Lr0/C;

    iget-object v3, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-direct {v2, v3, v0}, Lr0/C;-><init>(Landroid/media/AudioTrack;Lr0/e;)V

    iput-object v2, v1, Lr0/G;->z:Lr0/C;

    :cond_e
    iput-boolean v4, v1, Lr0/G;->N:Z

    iget-object v0, v1, Lr0/G;->s:Lr0/p;

    if-eqz v0, :cond_f

    iget-object v2, v1, Lr0/G;->u:Lr0/B;

    invoke-virtual {v2}, Lr0/B;->a()Lr0/m;

    move-result-object v2

    invoke-interface {v0, v2}, Lr0/p;->onAudioTrackInitialized(Lr0/m;)V

    :cond_f
    return v4

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    iget-object v0, v1, Lr0/G;->u:Lr0/B;

    iget v0, v0, Lr0/B;->c:I

    if-ne v0, v4, :cond_11

    iput-boolean v4, v1, Lr0/G;->e0:Z

    :cond_11
    throw v2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lr0/G;->y:Lr0/e;

    if-nez v0, :cond_3

    iget-object v0, p0, Lr0/G;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lr0/G;->g0:Landroid/os/Looper;

    new-instance v1, Lr0/e;

    new-instance v2, Lp2/f;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0}, Lp2/f;-><init>(ILjava/lang/Object;)V

    iget-object v3, p0, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    iget-object v4, p0, Lr0/G;->a0:Lcom/bumptech/glide/f;

    invoke-direct {v1, v0, v2, v3, v4}, Lr0/e;-><init>(Landroid/content/Context;Lp2/f;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)V

    iput-object v1, p0, Lr0/G;->y:Lr0/e;

    iget-boolean v0, v1, Lr0/e;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lr0/e;->g:Lr0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lr0/e;->j:Z

    iget-object v0, v1, Lr0/e;->f:Lr0/d;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lr0/d;->a:Landroid/content/ContentResolver;

    iget-object v3, v0, Lr0/d;->b:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    sget v0, Lk0/C;->a:I

    const/16 v2, 0x17

    iget-object v3, v1, Lr0/e;->c:Landroid/os/Handler;

    iget-object v4, v1, Lr0/e;->a:Landroid/content/Context;

    if-lt v0, v2, :cond_2

    iget-object v0, v1, Lr0/e;->d:Lr0/c;

    if-eqz v0, :cond_2

    const-string v2, "audio"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v5, v1, Lr0/e;->e:Lf/x;

    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v1, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    iget-object v3, v1, Lr0/e;->h:Lcom/bumptech/glide/f;

    invoke-static {v4, v0, v2, v3}, Lr0/b;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object v0

    iput-object v0, v1, Lr0/e;->g:Lr0/b;

    :goto_0
    iput-object v0, p0, Lr0/G;->x:Lr0/b;

    :cond_3
    return-void
.end method

.method public final s()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/G;->W:Z

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr0/G;->h:Lr0/v;

    invoke-virtual {v0}, Lr0/v;->d()V

    iget-wide v1, v0, Lr0/v;->x:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Lr0/v;->e:Lr0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lr0/u;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr0/v;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lr0/v;->z:J

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v0}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/G;->W:Z

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr0/G;->h:Lr0/v;

    iget-wide v1, v0, Lr0/v;->x:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, v0, Lr0/v;->I:Lk0/d;

    check-cast v1, Lk0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lk0/C;->Q(J)J

    move-result-wide v1

    iput-wide v1, v0, Lr0/v;->x:J

    :cond_0
    iget-object v0, v0, Lr0/v;->e:Lr0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lr0/u;->a()V

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 5

    iget-boolean v0, p0, Lr0/G;->U:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/G;->U:Z

    invoke-virtual {p0}, Lr0/G;->l()J

    move-result-wide v0

    iget-object v2, p0, Lr0/G;->h:Lr0/v;

    invoke-virtual {v2}, Lr0/v;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lr0/v;->z:J

    iget-object v3, v2, Lr0/v;->I:Lk0/d;

    check-cast v3, Lk0/w;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lk0/C;->Q(J)J

    move-result-wide v3

    iput-wide v3, v2, Lr0/v;->x:J

    iput-wide v0, v2, Lr0/v;->A:J

    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v0}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lr0/G;->V:Z

    :cond_0
    iget-object v0, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iput v1, p0, Lr0/G;->G:I

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 1

    iget-boolean v0, p0, Lr0/G;->T:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr0/G;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr0/G;->u()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/G;->T:Z

    :cond_0
    return-void
.end method

.method public final w(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lr0/G;->e(J)V

    iget-object v0, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lr0/G;->B(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lr0/G;->e(J)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->c()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, Lr0/G;->v:Li0/a;

    invoke-virtual {v0}, Li0/a;->d()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Li0/d;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Li0/a;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Li0/a;->b()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    sget-object v1, Li0/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Li0/a;->e(Ljava/nio/ByteBuffer;)V

    iget-object v1, v0, Li0/a;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Li0/a;->b()I

    move-result v0

    aget-object v0, v1, v0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lr0/G;->B(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, Lr0/G;->e(J)V

    iget-object v0, p0, Lr0/G;->S:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lr0/G;->v:Li0/a;

    iget-object v1, p0, Lr0/G;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Li0/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Li0/a;->d:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Li0/a;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final x()V
    .locals 5

    invoke-virtual {p0}, Lr0/G;->g()V

    iget-object v0, p0, Lr0/G;->f:Lp3/Y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lp3/F;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/d;

    invoke-interface {v2}, Li0/d;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr0/G;->g:Lp3/Y;

    invoke-virtual {v0, v1}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lp3/F;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/d;

    invoke-interface {v2}, Li0/d;->reset()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr0/G;->v:Li0/a;

    if-eqz v0, :cond_3

    iget-object v2, v0, Li0/a;->a:Lp3/H;

    move v3, v1

    :goto_2
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/d;

    invoke-interface {v4}, Li0/d;->flush()V

    invoke-interface {v4}, Li0/d;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-array v2, v1, [Ljava/nio/ByteBuffer;

    iput-object v2, v0, Li0/a;->c:[Ljava/nio/ByteBuffer;

    sget-object v2, Li0/b;->e:Li0/b;

    iput-boolean v1, v0, Li0/a;->d:Z

    :cond_3
    iput-boolean v1, p0, Lr0/G;->W:Z

    iput-boolean v1, p0, Lr0/G;->e0:Z

    return-void
.end method

.method public final y(Landroidx/media3/common/AudioAttributes;)V
    .locals 3

    iget-object v0, p0, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lr0/G;->A:Landroidx/media3/common/AudioAttributes;

    iget-boolean v0, p0, Lr0/G;->b0:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lr0/G;->y:Lr0/e;

    if-eqz v0, :cond_2

    iput-object p1, v0, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    iget-object v1, v0, Lr0/e;->a:Landroid/content/Context;

    iget-object v2, v0, Lr0/e;->h:Lcom/bumptech/glide/f;

    invoke-static {v1, p1, v2}, Lr0/b;->c(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/e;->a(Lr0/b;)V

    :cond_2
    invoke-virtual {p0}, Lr0/G;->g()V

    return-void
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Lr0/G;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAudioSink"

    const-string v2, "Failed to set playback params"

    invoke-static {v1, v2, v0}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget-object v1, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iget-object v2, p0, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v1, p0, Lr0/G;->h:Lr0/v;

    iput v0, v1, Lr0/v;->i:F

    iget-object v0, v1, Lr0/v;->e:Lr0/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr0/u;->a()V

    :cond_0
    invoke-virtual {v1}, Lr0/v;->d()V

    :cond_1
    return-void
.end method
