.class public final LD5/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final s:Ljava/util/logging/Logger;


# instance fields
.field public final b:LD5/t;

.field public final q:LD5/c;

.field public final r:LK5/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LD5/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LD5/u;->s:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(LK5/z;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/u;->r:LK5/i;

    new-instance v0, LD5/t;

    invoke-direct {v0, p1}, LD5/t;-><init>(LK5/i;)V

    iput-object v0, p0, LD5/u;->b:LD5/t;

    new-instance p1, LD5/c;

    invoke-direct {p1, v0}, LD5/c;-><init>(LD5/t;)V

    iput-object p1, p0, LD5/u;->q:LD5/c;

    return-void
.end method


# virtual methods
.method public final a(ZLD5/l;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, v1, LD5/u;->r:LK5/i;

    const-wide/16 v5, 0x9

    invoke-interface {v2, v5, v6}, LK5/i;->t(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, LD5/u;->r:LK5/i;

    invoke-static {v2}, Lx5/b;->q(LK5/i;)I

    move-result v2

    const/16 v3, 0x4000

    if-gt v2, v3, :cond_30

    iget-object v5, v1, LD5/u;->r:LK5/i;

    invoke-interface {v5}, LK5/i;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget-object v6, v1, LD5/u;->r:LK5/i;

    invoke-interface {v6}, LK5/i;->readByte()B

    move-result v6

    and-int/lit16 v7, v6, 0xff

    iget-object v8, v1, LD5/u;->r:LK5/i;

    invoke-interface {v8}, LK5/i;->readInt()I

    move-result v8

    const v9, 0x7fffffff

    and-int v13, v8, v9

    sget-object v9, LD5/u;->s:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    invoke-static {v11, v13, v2, v5, v7}, LD5/f;->a(ZIIII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x4

    if-eqz p1, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a SETTINGS frame but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, LD5/f;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v5, v4, :cond_2

    aget-object v3, v3, v5

    goto :goto_0

    :cond_2
    const-string v3, "0x%02x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lx5/b;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v12, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 p1, 0xe

    const/16 v10, 0x8

    move/from16 v16, v7

    move/from16 v17, v8

    const-wide/16 v7, 0x0

    packed-switch v5, :pswitch_data_0

    iget-object v0, v1, LD5/u;->r:LK5/i;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, LK5/i;->skip(J)V

    return v11

    :pswitch_0
    if-ne v2, v9, :cond_8

    iget-object v0, v1, LD5/u;->r:LK5/i;

    invoke-interface {v0}, LK5/i;->readInt()I

    move-result v0

    const-wide/32 v2, 0x7fffffff

    int-to-long v5, v0

    and-long/2addr v2, v5

    cmp-long v0, v2, v7

    if-eqz v0, :cond_7

    if-nez v13, :cond_4

    iget-object v5, v4, LD5/l;->q:LD5/q;

    monitor-enter v5

    :try_start_1
    iget-object v0, v4, LD5/l;->q:LD5/q;

    iget-wide v6, v0, LD5/q;->J:J

    add-long/2addr v6, v2

    iput-wide v6, v0, LD5/q;->J:J

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v11

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_4
    iget-object v4, v4, LD5/l;->q:LD5/q;

    invoke-virtual {v4, v13}, LD5/q;->b(I)LD5/y;

    move-result-object v4

    if-eqz v4, :cond_6

    monitor-enter v4

    :try_start_2
    iget-wide v5, v4, LD5/y;->d:J

    add-long/2addr v5, v2

    iput-wide v5, v4, LD5/y;->d:J

    if-lez v0, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit v4

    return v11

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6
    :goto_2
    move v3, v11

    goto/16 :goto_d

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "windowSizeIncrement was 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v3, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-lt v2, v10, :cond_10

    if-nez v13, :cond_f

    iget-object v3, v1, LD5/u;->r:LK5/i;

    invoke-interface {v3}, LK5/i;->readInt()I

    move-result v3

    iget-object v5, v1, LD5/u;->r:LK5/i;

    invoke-interface {v5}, LK5/i;->readInt()I

    move-result v5

    sub-int/2addr v2, v10

    invoke-static/range {p1 .. p1}, Lp/e;->d(I)[I

    move-result-object v6

    array-length v7, v6

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_a

    aget v9, v6, v8

    invoke-static {v9}, Lp/e;->c(I)I

    move-result v12

    if-ne v12, v5, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    move v9, v0

    :goto_4
    if-eqz v9, :cond_e

    sget-object v5, LK5/j;->s:LK5/j;

    if-lez v2, :cond_b

    iget-object v5, v1, LD5/u;->r:LK5/i;

    int-to-long v6, v2

    invoke-interface {v5, v6, v7}, LK5/i;->c(J)LK5/j;

    move-result-object v5

    :cond_b
    const-string v2, "debugData"

    invoke-static {v5, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, LK5/j;->b()I

    iget-object v2, v4, LD5/l;->q:LD5/q;

    monitor-enter v2

    :try_start_3
    iget-object v5, v4, LD5/l;->q:LD5/q;

    iget-object v5, v5, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    new-array v6, v0, [LD5/y;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    check-cast v5, [LD5/y;

    iget-object v6, v4, LD5/l;->q:LD5/q;

    iput-boolean v11, v6, LD5/q;->u:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    array-length v2, v5

    :goto_5
    if-ge v0, v2, :cond_6

    aget-object v6, v5, v0

    iget v7, v6, LD5/y;->m:I

    if-le v7, v3, :cond_c

    invoke-virtual {v6}, LD5/y;->g()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6, v10}, LD5/y;->j(I)V

    iget-object v7, v4, LD5/l;->q:LD5/q;

    iget v6, v6, LD5/y;->m:I

    invoke-virtual {v7, v6}, LD5/q;->f(I)LD5/y;

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_d
    :try_start_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_6
    monitor-exit v2

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v5, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v3, "TYPE_GOAWAY length < 8: "

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-ne v2, v10, :cond_17

    if-nez v13, :cond_16

    iget-object v2, v1, LD5/u;->r:LK5/i;

    invoke-interface {v2}, LK5/i;->readInt()I

    move-result v5

    iget-object v2, v1, LD5/u;->r:LK5/i;

    invoke-interface {v2}, LK5/i;->readInt()I

    move-result v2

    and-int/lit8 v3, v6, 0x1

    if-eqz v3, :cond_11

    move v0, v11

    :cond_11
    if-eqz v0, :cond_15

    iget-object v2, v4, LD5/l;->q:LD5/q;

    monitor-enter v2

    const-wide/16 v6, 0x1

    if-eq v5, v11, :cond_14

    if-eq v5, v15, :cond_13

    if-eq v5, v14, :cond_12

    goto :goto_7

    :cond_12
    :try_start_5
    iget-object v0, v4, LD5/l;->q:LD5/q;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_13
    iget-object v0, v4, LD5/l;->q:LD5/q;

    iget-wide v3, v0, LD5/q;->C:J

    add-long/2addr v3, v6

    iput-wide v3, v0, LD5/q;->C:J

    goto :goto_7

    :cond_14
    iget-object v0, v4, LD5/l;->q:LD5/q;

    iget-wide v3, v0, LD5/q;->A:J

    add-long/2addr v3, v6

    iput-wide v3, v0, LD5/q;->A:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_7
    monitor-exit v2

    return v11

    :goto_8
    monitor-exit v2

    throw v0

    :cond_15
    iget-object v0, v4, LD5/l;->q:LD5/q;

    iget-object v0, v0, LD5/q;->w:Lz5/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, LD5/l;->q:LD5/q;

    iget-object v6, v6, LD5/q;->r:Ljava/lang/String;

    const-string v9, " ping"

    invoke-static {v3, v6, v9}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v6, v2

    new-instance v2, LD5/o;

    move-wide v8, v7

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, LD5/o;-><init>(Ljava/lang/String;Ljava/lang/Object;III)V

    invoke-virtual {v0, v2, v8, v9}, Lz5/b;->c(Lz5/a;J)V

    return v11

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PING streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v3, "TYPE_PING length != 8: "

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move/from16 v0, v16

    invoke-virtual {v1, v4, v2, v0, v13}, LD5/u;->r(LD5/l;III)V

    return v11

    :pswitch_4
    iget-object v5, v1, LD5/u;->r:LK5/i;

    if-nez v13, :cond_25

    and-int/2addr v6, v11

    if-eqz v6, :cond_19

    if-nez v2, :cond_18

    goto/16 :goto_2

    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    rem-int/lit8 v6, v2, 0x6

    if-nez v6, :cond_24

    new-instance v6, LD5/D;

    invoke-direct {v6}, LD5/D;-><init>()V

    invoke-static {v0, v2}, LQ5/d;->B(II)Lh5/c;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v2}, LQ5/d;->A(Lh5/a;I)Lh5/a;

    move-result-object v0

    iget v2, v0, Lh5/a;->b:I

    iget v10, v0, Lh5/a;->q:I

    iget v0, v0, Lh5/a;->r:I

    if-ltz v0, :cond_1a

    if-gt v2, v10, :cond_23

    goto :goto_9

    :cond_1a
    if-lt v2, v10, :cond_23

    :goto_9
    invoke-interface {v5}, LK5/i;->readShort()S

    move-result v13

    sget-object v16, Lx5/b;->a:[B

    const v16, 0xffff

    and-int v13, v13, v16

    invoke-interface {v5}, LK5/i;->readInt()I

    move-result v7

    if-eq v13, v15, :cond_20

    if-eq v13, v14, :cond_1f

    if-eq v13, v9, :cond_1d

    if-eq v13, v12, :cond_1b

    goto :goto_a

    :cond_1b
    if-lt v7, v3, :cond_1c

    const v8, 0xffffff

    if-gt v7, v8, :cond_1c

    goto :goto_a

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v7, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    if-ltz v7, :cond_1e

    const/4 v13, 0x7

    goto :goto_a

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move v13, v9

    goto :goto_a

    :cond_20
    if-eqz v7, :cond_22

    if-ne v7, v11, :cond_21

    goto :goto_a

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_a
    invoke-virtual {v6, v13, v7}, LD5/D;->c(II)V

    if-eq v2, v10, :cond_23

    add-int/2addr v2, v0

    const-wide/16 v7, 0x0

    goto :goto_9

    :cond_23
    iget-object v0, v4, LD5/l;->q:LD5/q;

    iget-object v2, v0, LD5/q;->w:Lz5/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, LD5/q;->r:Ljava/lang/String;

    const-string v5, " applyAndAckSettings"

    invoke-static {v3, v0, v5}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, LD5/j;

    invoke-direct {v3, v0, v4, v6, v11}, LD5/j;-><init>(Ljava/lang/String;LD5/l;Ljava/lang/Object;I)V

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v8, v9}, Lz5/b;->c(Lz5/a;J)V

    return v11

    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v3, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-ne v2, v9, :cond_2d

    if-eqz v13, :cond_2c

    iget-object v2, v1, LD5/u;->r:LK5/i;

    invoke-interface {v2}, LK5/i;->readInt()I

    move-result v2

    invoke-static/range {p1 .. p1}, Lp/e;->d(I)[I

    move-result-object v3

    array-length v5, v3

    move v6, v0

    :goto_b
    if-ge v6, v5, :cond_27

    aget v7, v3, v6

    invoke-static {v7}, Lp/e;->c(I)I

    move-result v8

    if-ne v8, v2, :cond_26

    move v14, v7

    goto :goto_c

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_27
    move v14, v0

    :goto_c
    if-eqz v14, :cond_2b

    iget-object v12, v4, LD5/l;->q:LD5/q;

    if-eqz v13, :cond_28

    and-int/lit8 v2, v17, 0x1

    if-nez v2, :cond_28

    move v0, v11

    :cond_28
    if-eqz v0, :cond_29

    iget-object v0, v12, LD5/q;->x:Lz5/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onReset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, LD5/o;

    const/4 v15, 0x0

    move v3, v11

    move-object v11, v2

    invoke-direct/range {v10 .. v15}, LD5/o;-><init>(Ljava/lang/String;Ljava/lang/Object;III)V

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v10, v8, v9}, Lz5/b;->c(Lz5/a;J)V

    return v3

    :cond_29
    move v3, v11

    invoke-virtual {v12, v13}, LD5/q;->f(I)LD5/y;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0, v14}, LD5/y;->j(I)V

    :cond_2a
    :goto_d
    return v3

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v3, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v3, "TYPE_RST_STREAM length: "

    const-string v4, " != 4"

    invoke-static {v3, v2, v4}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move v3, v11

    if-ne v2, v12, :cond_2f

    if-eqz v13, :cond_2e

    iget-object v0, v1, LD5/u;->r:LK5/i;

    invoke-interface {v0}, LK5/i;->readInt()I

    invoke-interface {v0}, LK5/i;->readByte()B

    return v3

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v3, "TYPE_PRIORITY length: "

    const-string v4, " != 5"

    invoke-static {v3, v2, v4}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    move v3, v11

    move/from16 v0, v16

    invoke-virtual {v1, v4, v2, v0, v13}, LD5/u;->h(LD5/l;III)V

    return v3

    :pswitch_8
    move v3, v11

    move/from16 v0, v16

    invoke-virtual {v1, v4, v2, v0, v13}, LD5/u;->b(LD5/l;III)V

    return v3

    :cond_30
    new-instance v0, Ljava/io/IOException;

    const-string v3, "FRAME_SIZE_ERROR: "

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(LD5/l;III)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v5, p4

    if-eqz v5, :cond_f

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_e

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    iget-object v3, v1, LD5/u;->r:LK5/i;

    invoke-interface {v3}, LK5/i;->readByte()B

    move-result v3

    sget-object v7, Lx5/b;->a:[B

    and-int/lit16 v3, v3, 0xff

    move v9, v3

    :goto_1
    move/from16 v3, p2

    goto :goto_2

    :cond_1
    move v9, v4

    goto :goto_1

    :goto_2
    invoke-static {v3, v2, v9}, LD5/s;->a(III)I

    move-result v7

    iget-object v2, v1, LD5/u;->r:LK5/i;

    const-string v3, "source"

    invoke-static {v2, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v4

    iget-object v4, v0, LD5/l;->q:LD5/q;

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_2

    and-int/lit8 v12, v5, 0x1

    if-nez v12, :cond_2

    new-instance v6, LK5/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    int-to-long v12, v7

    invoke-interface {v2, v12, v13}, LK5/i;->t(J)V

    invoke-interface {v2, v6, v12, v13}, LK5/F;->read(LK5/g;J)J

    iget-object v0, v4, LD5/q;->x:Lz5/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, LD5/m;

    invoke-direct/range {v2 .. v8}, LD5/m;-><init>(Ljava/lang/String;LD5/q;ILK5/g;IZ)V

    invoke-virtual {v0, v2, v10, v11}, Lz5/b;->c(Lz5/a;J)V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v4, v5}, LD5/q;->b(I)LD5/y;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v3, v0, LD5/l;->q:LD5/q;

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v4}, LD5/q;->x(II)V

    iget-object v0, v0, LD5/l;->q:LD5/q;

    int-to-long v3, v7

    invoke-virtual {v0, v3, v4}, LD5/q;->r(J)V

    invoke-interface {v2, v3, v4}, LK5/i;->skip(J)V

    goto/16 :goto_9

    :cond_3
    sget-object v0, Lx5/b;->a:[B

    iget-object v0, v4, LD5/y;->g:LD5/w;

    int-to-long v12, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    cmp-long v5, v12, v10

    if-lez v5, :cond_c

    iget-object v5, v0, LD5/w;->u:LD5/y;

    monitor-enter v5

    :try_start_0
    iget-boolean v7, v0, LD5/w;->t:Z

    iget-object v14, v0, LD5/w;->q:LK5/g;

    iget-wide v14, v14, LK5/g;->q:J

    add-long/2addr v14, v12

    move-wide/from16 p2, v10

    iget-wide v10, v0, LD5/w;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v10, v14, v10

    if-lez v10, :cond_4

    move v10, v6

    goto :goto_4

    :cond_4
    move v10, v3

    :goto_4
    monitor-exit v5

    if-eqz v10, :cond_5

    invoke-interface {v2, v12, v13}, LK5/i;->skip(J)V

    iget-object v0, v0, LD5/w;->u:LD5/y;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, LD5/y;->e(I)V

    goto :goto_8

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v2, v12, v13}, LK5/i;->skip(J)V

    goto :goto_8

    :cond_6
    iget-object v5, v0, LD5/w;->b:LK5/g;

    invoke-interface {v2, v5, v12, v13}, LK5/F;->read(LK5/g;J)J

    move-result-wide v10

    const-wide/16 v14, -0x1

    cmp-long v5, v10, v14

    if-eqz v5, :cond_b

    sub-long/2addr v12, v10

    iget-object v5, v0, LD5/w;->u:LD5/y;

    monitor-enter v5

    :try_start_1
    iget-boolean v7, v0, LD5/w;->r:Z

    if-eqz v7, :cond_7

    iget-object v7, v0, LD5/w;->b:LK5/g;

    iget-wide v10, v7, LK5/g;->q:J

    invoke-virtual {v7}, LK5/g;->a()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    iget-object v7, v0, LD5/w;->q:LK5/g;

    iget-wide v10, v7, LK5/g;->q:J

    cmp-long v10, v10, p2

    if-nez v10, :cond_8

    move v10, v6

    goto :goto_5

    :cond_8
    move v10, v3

    :goto_5
    iget-object v11, v0, LD5/w;->b:LK5/g;

    invoke-virtual {v7, v11}, LK5/g;->e(LK5/F;)J

    if-eqz v10, :cond_9

    iget-object v7, v0, LD5/w;->u:LD5/y;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    move-wide/from16 v10, p2

    :goto_6
    monitor-exit v5

    cmp-long v5, v10, p2

    if-lez v5, :cond_a

    invoke-virtual {v0, v10, v11}, LD5/w;->a(J)V

    :cond_a
    move-wide/from16 v10, p2

    goto :goto_3

    :goto_7
    monitor-exit v5

    throw v0

    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_c
    :goto_8
    if-eqz v8, :cond_d

    sget-object v0, Lx5/b;->b:Lw5/p;

    invoke-virtual {v4, v0, v6}, LD5/y;->i(Lw5/p;Z)V

    :cond_d
    :goto_9
    iget-object v0, v1, LD5/u;->r:LK5/i;

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, LK5/i;->skip(J)V

    return-void

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, LD5/u;->r:LK5/i;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final f(IIII)Ljava/util/List;
    .locals 3

    iget-object v0, p0, LD5/u;->b:LD5/t;

    iput p1, v0, LD5/t;->s:I

    iput p1, v0, LD5/t;->b:I

    iput p2, v0, LD5/t;->t:I

    iput p3, v0, LD5/t;->q:I

    iput p4, v0, LD5/t;->r:I

    iget-object p1, p0, LD5/u;->q:LD5/c;

    iget-object p2, p1, LD5/c;->b:LK5/z;

    iget-object p3, p1, LD5/c;->a:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-virtual {p2}, LK5/z;->a()Z

    move-result p4

    if-nez p4, :cond_c

    invoke-virtual {p2}, LK5/z;->readByte()B

    move-result p4

    sget-object v0, Lx5/b;->a:[B

    and-int/lit16 v0, p4, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_b

    and-int/lit16 v2, p4, 0x80

    if-ne v2, v1, :cond_3

    const/16 p4, 0x7f

    invoke-virtual {p1, v0, p4}, LD5/c;->e(II)I

    move-result p4

    add-int/lit8 v0, p4, -0x1

    if-ltz v0, :cond_1

    sget-object v1, LD5/e;->a:[LD5/b;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    aget-object p4, v1, v0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, LD5/e;->a:[LD5/b;

    array-length v1, v1

    sub-int/2addr v0, v1

    iget v1, p1, LD5/c;->d:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    iget-object v0, p1, LD5/c;->c:[LD5/b;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object p4, v0, v1

    invoke-static {p4}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Header index too large "

    invoke-static {p4, p2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    sget-object p4, LD5/e;->a:[LD5/b;

    invoke-virtual {p1}, LD5/c;->d()LK5/j;

    move-result-object p4

    invoke-static {p4}, LD5/e;->a(LK5/j;)V

    invoke-virtual {p1}, LD5/c;->d()LK5/j;

    move-result-object v0

    new-instance v1, LD5/b;

    invoke-direct {v1, p4, v0}, LD5/b;-><init>(LK5/j;LK5/j;)V

    invoke-virtual {p1, v1}, LD5/c;->c(LD5/b;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p4, 0x40

    if-ne v2, v1, :cond_5

    const/16 p4, 0x3f

    invoke-virtual {p1, v0, p4}, LD5/c;->e(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, LD5/c;->b(I)LK5/j;

    move-result-object p4

    invoke-virtual {p1}, LD5/c;->d()LK5/j;

    move-result-object v0

    new-instance v1, LD5/b;

    invoke-direct {v1, p4, v0}, LD5/b;-><init>(LK5/j;LK5/j;)V

    invoke-virtual {p1, v1}, LD5/c;->c(LD5/b;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p4, p4, 0x20

    const/16 v1, 0x20

    if-ne p4, v1, :cond_8

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p4}, LD5/c;->e(II)I

    move-result p4

    iput p4, p1, LD5/c;->g:I

    if-ltz p4, :cond_7

    const/16 v0, 0x1000

    if-gt p4, v0, :cond_7

    iget v0, p1, LD5/c;->f:I

    if-ge p4, v0, :cond_0

    if-nez p4, :cond_6

    iget-object p4, p1, LD5/c;->c:[LD5/b;

    array-length v0, p4

    const/4 v1, 0x0

    invoke-static {p4, v1, v0}, LT4/f;->z([Ljava/lang/Object;II)V

    iget-object p4, p1, LD5/c;->c:[LD5/b;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    iput p4, p1, LD5/c;->d:I

    iput v1, p1, LD5/c;->e:I

    iput v1, p1, LD5/c;->f:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr v0, p4

    invoke-virtual {p1, v0}, LD5/c;->a(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid dynamic table size update "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, LD5/c;->g:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    const/16 p4, 0x10

    if-eq v0, p4, :cond_a

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 p4, 0xf

    invoke-virtual {p1, v0, p4}, LD5/c;->e(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, LD5/c;->b(I)LK5/j;

    move-result-object p4

    invoke-virtual {p1}, LD5/c;->d()LK5/j;

    move-result-object v0

    new-instance v1, LD5/b;

    invoke-direct {v1, p4, v0}, LD5/b;-><init>(LK5/j;LK5/j;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p4, LD5/e;->a:[LD5/b;

    invoke-virtual {p1}, LD5/c;->d()LK5/j;

    move-result-object p4

    invoke-static {p4}, LD5/e;->a(LK5/j;)V

    invoke-virtual {p1}, LD5/c;->d()LK5/j;

    move-result-object v0

    new-instance v1, LD5/b;

    invoke-direct {v1, p4, v0}, LD5/b;-><init>(LK5/j;LK5/j;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-static {p3}, LT4/g;->E(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    return-object p1
.end method

.method public final h(LD5/l;III)V
    .locals 8

    if-eqz p4, :cond_8

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, LD5/u;->r:LK5/i;

    invoke-interface {v0}, LK5/i;->readByte()B

    move-result v0

    sget-object v1, Lx5/b;->a:[B

    and-int/lit16 v1, v0, 0xff

    :cond_1
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, LD5/u;->r:LK5/i;

    invoke-interface {v0}, LK5/i;->readInt()I

    invoke-interface {v0}, LK5/i;->readByte()B

    sget-object v0, Lx5/b;->a:[B

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v1}, LD5/s;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v1, p3, p4}, LD5/u;->f(IIII)Ljava/util/List;

    move-result-object p2

    iget-object v4, p1, LD5/l;->q:LD5/q;

    const-wide/16 v0, 0x0

    const/16 p3, 0x5b

    if-eqz p4, :cond_3

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_3

    iget-object p1, v4, LD5/q;->x:Lz5/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] onHeaders"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, LD5/n;

    move v5, p4

    move v7, v6

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, LD5/n;-><init>(Ljava/lang/String;LD5/q;ILjava/util/List;Z)V

    invoke-virtual {p1, v2, v0, v1}, Lz5/b;->c(Lz5/a;J)V

    return-void

    :cond_3
    move v3, p4

    move-object p4, v4

    monitor-enter p4

    :try_start_0
    iget-object v2, p1, LD5/l;->q:LD5/q;

    invoke-virtual {v2, v3}, LD5/q;->b(I)LD5/y;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p1, LD5/l;->q:LD5/q;

    iget-boolean v4, v2, LD5/q;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    monitor-exit p4

    return-void

    :cond_4
    :try_start_1
    iget v4, v2, LD5/q;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v4, :cond_5

    monitor-exit p4

    return-void

    :cond_5
    :try_start_2
    rem-int/lit8 v4, v3, 0x2

    iget v2, v2, LD5/q;->t:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v2, :cond_6

    monitor-exit p4

    return-void

    :cond_6
    :try_start_3
    invoke-static {p2}, Lx5/b;->s(Ljava/util/List;)Lw5/p;

    move-result-object v7

    new-instance v2, LD5/y;

    iget-object v4, p1, LD5/l;->q:LD5/q;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, LD5/y;-><init>(ILD5/q;ZZLw5/p;)V

    iget-object v4, p1, LD5/l;->q:LD5/q;

    iput v3, v4, LD5/q;->s:I

    iget-object v4, v4, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p1, LD5/l;->q:LD5/q;

    iget-object v4, v4, LD5/q;->v:Lz5/c;

    invoke-virtual {v4}, Lz5/c;->e()Lz5/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, LD5/l;->q:LD5/q;

    iget-object v6, v6, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] onStream"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v3, LD5/k;

    invoke-direct {v3, p3, v2, p1, p2}, LD5/k;-><init>(Ljava/lang/String;LD5/y;LD5/l;Ljava/util/List;)V

    invoke-virtual {v4, v3, v0, v1}, Lz5/b;->c(Lz5/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p4

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_7
    monitor-exit p4

    invoke-static {p2}, Lx5/b;->s(Ljava/util/List;)Lw5/p;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, LD5/y;->i(Lw5/p;Z)V

    return-void

    :goto_1
    monitor-exit p4

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(LD5/l;III)V
    .locals 3

    if-eqz p4, :cond_2

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/u;->r:LK5/i;

    invoke-interface {v0}, LK5/i;->readByte()B

    move-result v0

    sget-object v1, Lx5/b;->a:[B

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LD5/u;->r:LK5/i;

    invoke-interface {v1}, LK5/i;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, LD5/s;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, LD5/u;->f(IIII)Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, LD5/l;->q:LD5/q;

    monitor-enter p1

    :try_start_0
    iget-object p3, p1, LD5/q;->N:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p2}, LD5/q;->x(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p3, p1, LD5/q;->N:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    iget-object p3, p1, LD5/q;->x:Lz5/b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] onRequest"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v0, LD5/n;

    invoke-direct {v0, p4, p1, v1, p2}, LD5/n;-><init>(Ljava/lang/String;LD5/q;ILjava/util/List;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p3, v0, p1, p2}, Lz5/b;->c(Lz5/a;J)V

    return-void

    :goto_1
    monitor-exit p1

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
