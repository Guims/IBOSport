.class public Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;
.super Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;-><init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;-><init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p4, p5, p6}, Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;-><init>(Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    const-string p4, "Content stream"

    invoke-static {p1, p4}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    iput-wide p2, p0, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;->length:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 6

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;-><init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;-><init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Z)V
    .locals 7

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;-><init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;->length:J

    return-wide v0
.end method

.method public final isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isStreaming()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/hc/core5/http/io/entity/EmptyInputStream;->INSTANCE:Lorg/apache/hc/core5/http/io/entity/EmptyInputStream;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
