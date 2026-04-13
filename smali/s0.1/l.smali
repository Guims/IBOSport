.class public final Ls0/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:LB0/h;

.field public final b:Lt0/m;

.field public final c:Lt0/b;

.field public final d:Ls0/i;

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ls0/l;->e:J

    iput-object p3, p0, Ls0/l;->b:Lt0/m;

    iput-object p4, p0, Ls0/l;->c:Lt0/b;

    iput-wide p6, p0, Ls0/l;->f:J

    iput-object p5, p0, Ls0/l;->a:LB0/h;

    iput-object p8, p0, Ls0/l;->d:Ls0/i;

    return-void
.end method


# virtual methods
.method public final a(JLt0/m;)Ls0/l;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Ls0/l;->b:Lt0/m;

    invoke-virtual {v1}, Lt0/m;->c()Ls0/i;

    move-result-object v9

    move-object v1, v9

    invoke-virtual/range {p3 .. p3}, Lt0/m;->c()Ls0/i;

    move-result-object v9

    if-nez v1, :cond_0

    move-object v9, v1

    new-instance v1, Ls0/l;

    iget-object v6, v0, Ls0/l;->a:LB0/h;

    iget-wide v7, v0, Ls0/l;->f:J

    iget-object v5, v0, Ls0/l;->c:Lt0/b;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Ls0/l;-><init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V

    return-object v1

    :cond_0
    move-object/from16 v18, v9

    move-object v9, v1

    move-object/from16 v1, v18

    invoke-interface {v9}, Ls0/i;->E()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v9, v1

    new-instance v1, Ls0/l;

    iget-object v6, v0, Ls0/l;->a:LB0/h;

    iget-wide v7, v0, Ls0/l;->f:J

    iget-object v5, v0, Ls0/l;->c:Lt0/b;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Ls0/l;-><init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V

    return-object v1

    :cond_1
    move-object v2, v9

    move-object v9, v1

    move-object v1, v2

    move-wide/from16 v2, p1

    invoke-interface {v1, v2, v3}, Ls0/i;->J(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    new-instance v1, Ls0/l;

    iget-object v6, v0, Ls0/l;->a:LB0/h;

    iget-wide v7, v0, Ls0/l;->f:J

    iget-object v5, v0, Ls0/l;->c:Lt0/b;

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Ls0/l;-><init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V

    return-object v1

    :cond_2
    invoke-static {v9}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v1}, Ls0/i;->G()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Ls0/i;->a(J)J

    move-result-wide v10

    add-long/2addr v4, v6

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    invoke-interface {v1, v12, v13}, Ls0/i;->a(J)J

    move-result-wide v14

    invoke-interface {v1, v12, v13, v2, v3}, Ls0/i;->g(JJ)J

    move-result-wide v12

    add-long/2addr v12, v14

    invoke-interface {v9}, Ls0/i;->G()J

    move-result-wide v14

    move-wide/from16 v16, v4

    invoke-interface {v9, v14, v15}, Ls0/i;->a(J)J

    move-result-wide v4

    cmp-long v8, v12, v4

    iget-wide v12, v0, Ls0/l;->f:J

    if-nez v8, :cond_3

    sub-long v4, v16, v14

    :goto_0
    add-long/2addr v4, v12

    :goto_1
    move-wide v7, v4

    goto :goto_2

    :cond_3
    if-ltz v8, :cond_5

    cmp-long v8, v4, v10

    if-gez v8, :cond_4

    invoke-interface {v9, v10, v11, v2, v3}, Ls0/i;->x(JJ)J

    move-result-wide v4

    sub-long/2addr v4, v6

    sub-long v4, v12, v4

    goto :goto_1

    :cond_4
    invoke-interface {v1, v4, v5, v2, v3}, Ls0/i;->x(JJ)J

    move-result-wide v4

    sub-long/2addr v4, v14

    goto :goto_0

    :goto_2
    new-instance v1, Ls0/l;

    iget-object v5, v0, Ls0/l;->c:Lt0/b;

    iget-object v6, v0, Ls0/l;->a:LB0/h;

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Ls0/l;-><init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V

    return-object v1

    :cond_5
    new-instance v1, Landroidx/media3/exoplayer/source/b;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public final b(J)J
    .locals 3

    iget-object v0, p0, Ls0/l;->d:Ls0/i;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v1, p0, Ls0/l;->e:J

    invoke-interface {v0, v1, v2, p1, p2}, Ls0/i;->k(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Ls0/l;->f:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final c(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Ls0/l;->b(J)J

    move-result-wide v0

    iget-object v2, p0, Ls0/l;->d:Ls0/i;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v3, p0, Ls0/l;->e:J

    invoke-interface {v2, v3, v4, p1, p2}, Ls0/i;->K(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final d()J
    .locals 3

    iget-object v0, p0, Ls0/l;->d:Ls0/i;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v1, p0, Ls0/l;->e:J

    invoke-interface {v0, v1, v2}, Ls0/i;->J(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Ls0/l;->f(J)J

    move-result-wide v0

    iget-object v2, p0, Ls0/l;->d:Ls0/i;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v3, p0, Ls0/l;->f:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Ls0/l;->e:J

    invoke-interface {v2, p1, p2, v3, v4}, Ls0/i;->g(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final f(J)J
    .locals 3

    iget-object v0, p0, Ls0/l;->d:Ls0/i;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v1, p0, Ls0/l;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ls0/i;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final g(JJ)Z
    .locals 2

    iget-object v0, p0, Ls0/l;->d:Ls0/i;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v0}, Ls0/i;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Ls0/l;->e(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
