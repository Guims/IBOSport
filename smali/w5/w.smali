.class public final Lw5/w;
.super Lw5/F;


# static fields
.field public static final e:Lw5/t;

.field public static final f:Lw5/t;

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public final a:Lw5/t;

.field public b:J

.field public final c:LK5/j;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lw5/t;->d:Ljava/util/regex/Pattern;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    move-result-object v0

    sput-object v0, Lw5/w;->e:Lw5/t;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    const-string v0, "multipart/digest"

    invoke-static {v0}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    move-result-object v0

    sput-object v0, Lw5/w;->f:Lw5/t;

    const/16 v0, 0x3a

    int-to-byte v0, v0

    const/16 v1, 0x20

    int-to-byte v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    sput-object v3, Lw5/w;->g:[B

    const/16 v1, 0xd

    int-to-byte v1, v1

    const/16 v3, 0xa

    int-to-byte v3, v3

    new-array v5, v2, [B

    aput-byte v1, v5, v4

    aput-byte v3, v5, v0

    sput-object v5, Lw5/w;->h:[B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    new-array v2, v2, [B

    aput-byte v1, v2, v4

    aput-byte v1, v2, v0

    sput-object v2, Lw5/w;->i:[B

    return-void
.end method

.method public constructor <init>(LK5/j;Lw5/t;Ljava/util/List;)V
    .locals 1

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/w;->c:LK5/j;

    iput-object p3, p0, Lw5/w;->d:Ljava/util/List;

    sget-object p3, Lw5/t;->d:Ljava/util/regex/Pattern;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LK5/j;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    move-result-object p1

    iput-object p1, p0, Lw5/w;->a:Lw5/t;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lw5/w;->b:J

    return-void
.end method


# virtual methods
.method public final a(LK5/h;Z)J
    .locals 16

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    new-instance v1, LK5/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    :goto_0
    iget-object v3, v0, Lw5/w;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v8, v5

    :goto_1
    iget-object v9, v0, Lw5/w;->c:LK5/j;

    sget-object v10, Lw5/w;->i:[B

    sget-object v11, Lw5/w;->h:[B

    if-ge v8, v4, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lw5/v;

    iget-object v13, v12, Lw5/v;->a:Lw5/p;

    iget-object v12, v12, Lw5/v;->b:Lw5/F;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-interface {v1, v10}, LK5/h;->write([B)LK5/h;

    invoke-interface {v1, v9}, LK5/h;->p(LK5/j;)LK5/h;

    invoke-interface {v1, v11}, LK5/h;->write([B)LK5/h;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lw5/p;->size()I

    move-result v9

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_1

    invoke-virtual {v13, v10}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v14

    sget-object v15, Lw5/w;->g:[B

    invoke-interface {v14, v15}, LK5/h;->write([B)LK5/h;

    move-result-object v14

    invoke-virtual {v13, v10}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v14

    invoke-interface {v14, v11}, LK5/h;->write([B)LK5/h;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lw5/F;->contentType()Lw5/t;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, "Content-Type: "

    invoke-interface {v1, v10}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v10

    iget-object v9, v9, Lw5/t;->a:Ljava/lang/String;

    invoke-interface {v10, v9}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v9

    invoke-interface {v9, v11}, LK5/h;->write([B)LK5/h;

    :cond_2
    invoke-virtual {v12}, Lw5/F;->contentLength()J

    move-result-wide v9

    const-wide/16 v13, -0x1

    cmp-long v15, v9, v13

    if-eqz v15, :cond_3

    const-string v13, "Content-Length: "

    invoke-interface {v1, v13}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v13

    invoke-interface {v13, v9, v10}, LK5/h;->u(J)LK5/h;

    move-result-object v13

    invoke-interface {v13, v11}, LK5/h;->write([B)LK5/h;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, LK5/g;->a()V

    return-wide v13

    :cond_4
    :goto_3
    invoke-interface {v1, v11}, LK5/h;->write([B)LK5/h;

    if-eqz p2, :cond_5

    add-long/2addr v6, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v1}, Lw5/F;->writeTo(LK5/h;)V

    :goto_4
    invoke-interface {v1, v11}, LK5/h;->write([B)LK5/h;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-interface {v1, v10}, LK5/h;->write([B)LK5/h;

    invoke-interface {v1, v9}, LK5/h;->p(LK5/j;)LK5/h;

    invoke-interface {v1, v10}, LK5/h;->write([B)LK5/h;

    invoke-interface {v1, v11}, LK5/h;->write([B)LK5/h;

    if-eqz p2, :cond_7

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget-wide v3, v2, LK5/g;->q:J

    add-long/2addr v6, v3

    invoke-virtual {v2}, LK5/g;->a()V

    :cond_7
    return-wide v6
.end method

.method public final contentLength()J
    .locals 4

    iget-wide v0, p0, Lw5/w;->b:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lw5/w;->a(LK5/h;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lw5/w;->b:J

    :cond_0
    return-wide v0
.end method

.method public final contentType()Lw5/t;
    .locals 1

    iget-object v0, p0, Lw5/w;->a:Lw5/t;

    return-object v0
.end method

.method public final writeTo(LK5/h;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw5/w;->a(LK5/h;Z)J

    return-void
.end method
