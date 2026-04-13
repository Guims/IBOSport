.class public final LN0/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:LI0/g;

.field public final b:LI0/k;

.field public c:LI0/h;

.field public final d:I


# direct methods
.method public constructor <init>(LI0/i;LI0/k;JJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LN0/b;->b:LI0/k;

    iput p13, p0, LN0/b;->d:I

    move-object p2, p1

    new-instance p1, LI0/g;

    invoke-direct/range {p1 .. p12}, LI0/g;-><init>(LI0/i;JJJJJ)V

    iput-object p1, p0, LN0/b;->a:LI0/g;

    return-void
.end method

.method public static a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static c(LI0/r;JLI0/D;)I
    .locals 2

    invoke-interface {p0}, LI0/r;->getPosition()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, LI0/D;->a:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final b(LI0/r;LI0/D;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, LN0/b;->c:LI0/h;

    invoke-static {v3}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v4, v3, LI0/h;->f:J

    iget-wide v6, v3, LI0/h;->g:J

    iget-wide v8, v3, LI0/h;->h:J

    sub-long/2addr v6, v4

    iget v10, v0, LN0/b;->d:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x0

    iget-object v10, v0, LN0/b;->b:LI0/k;

    if-gtz v6, :cond_0

    iput-object v7, v0, LN0/b;->c:LI0/h;

    invoke-interface {v10}, LI0/k;->k()V

    invoke-static {v1, v4, v5, v2}, LN0/b;->c(LI0/r;JLI0/D;)I

    move-result v1

    return v1

    :cond_0
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    if-ltz v6, :cond_6

    const-wide/32 v13, 0x40000

    cmp-long v6, v4, v13

    if-gtz v6, :cond_6

    long-to-int v4, v4

    invoke-interface {v1, v4}, LI0/r;->n(I)V

    invoke-interface {v1}, LI0/r;->j()V

    iget-wide v4, v3, LI0/h;->b:J

    invoke-interface {v10, v1, v4, v5}, LI0/k;->e(LI0/r;J)LI0/j;

    move-result-object v4

    iget v5, v4, LI0/j;->a:I

    move-wide v15, v11

    iget-wide v11, v4, LI0/j;->b:J

    move-wide/from16 v17, v13

    iget-wide v13, v4, LI0/j;->c:J

    const/4 v4, -0x3

    if-eq v5, v4, :cond_5

    const/4 v4, -0x2

    if-eq v5, v4, :cond_4

    const/4 v4, -0x1

    if-eq v5, v4, :cond_3

    if-nez v5, :cond_2

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v3

    sub-long v3, v13, v3

    cmp-long v5, v3, v15

    if-ltz v5, :cond_1

    cmp-long v5, v3, v17

    if-gtz v5, :cond_1

    long-to-int v3, v3

    invoke-interface {v1, v3}, LI0/r;->n(I)V

    :cond_1
    iput-object v7, v0, LN0/b;->c:LI0/h;

    invoke-interface {v10}, LI0/k;->k()V

    invoke-static {v1, v13, v14, v2}, LN0/b;->c(LI0/r;JLI0/D;)I

    move-result v1

    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid case"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-wide v11, v3, LI0/h;->e:J

    iput-wide v13, v3, LI0/h;->g:J

    iget-wide v4, v3, LI0/h;->b:J

    iget-wide v6, v3, LI0/h;->d:J

    iget-wide v8, v3, LI0/h;->f:J

    move-wide v15, v4

    iget-wide v4, v3, LI0/h;->c:J

    move-wide/from16 v25, v4

    move-wide/from16 v17, v6

    move-wide/from16 v21, v8

    move-wide/from16 v19, v11

    move-wide/from16 v23, v13

    invoke-static/range {v15 .. v26}, LI0/h;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, LI0/h;->h:J

    goto/16 :goto_0

    :cond_4
    move-wide v4, v11

    move-wide v6, v13

    iput-wide v4, v3, LI0/h;->d:J

    iput-wide v6, v3, LI0/h;->f:J

    iget-wide v8, v3, LI0/h;->b:J

    iget-wide v10, v3, LI0/h;->e:J

    iget-wide v12, v3, LI0/h;->g:J

    iget-wide v14, v3, LI0/h;->c:J

    move-wide/from16 v17, v4

    move-wide/from16 v21, v6

    move-wide/from16 v19, v10

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-wide v15, v8

    invoke-static/range {v15 .. v26}, LI0/h;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, LI0/h;->h:J

    goto/16 :goto_0

    :cond_5
    iput-object v7, v0, LN0/b;->c:LI0/h;

    invoke-interface {v10}, LI0/k;->k()V

    invoke-static {v1, v8, v9, v2}, LN0/b;->c(LI0/r;JLI0/D;)I

    move-result v1

    return v1

    :cond_6
    invoke-static {v1, v8, v9, v2}, LN0/b;->c(LI0/r;JLI0/D;)I

    move-result v1

    return v1
.end method

.method public final d(J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, LN0/b;->c:LI0/h;

    if-eqz v1, :cond_0

    iget-wide v4, v1, LI0/h;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, LI0/h;

    iget-object v4, v0, LN0/b;->a:LI0/g;

    iget-object v5, v4, LI0/g;->a:LI0/i;

    invoke-interface {v5, v2, v3}, LI0/i;->e(J)J

    move-result-wide v5

    move-wide v8, v5

    iget-wide v6, v4, LI0/g;->c:J

    move-wide v10, v8

    iget-wide v8, v4, LI0/g;->d:J

    move-wide v12, v10

    iget-wide v10, v4, LI0/g;->e:J

    iget-wide v4, v4, LI0/g;->f:J

    move-wide v14, v12

    move-wide v12, v4

    move-wide v4, v14

    invoke-direct/range {v1 .. v13}, LI0/h;-><init>(JJJJJJ)V

    iput-object v1, v0, LN0/b;->c:LI0/h;

    return-void
.end method
