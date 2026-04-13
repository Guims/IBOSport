.class public Lorg/apache/hc/core5/http/io/entity/PathEntity;
.super Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;-><init>(Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    const-string p2, "Path"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/cookie/a;->e(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/PathEntity;->path:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/apache/hc/core5/http/io/entity/AbstractHttpEntity;-><init>(Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    const-string p2, "Path"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/cookie/a;->e(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/PathEntity;->path:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/PathEntity;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Lorg/apache/hc/client5/http/impl/cookie/a;->b(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/PathEntity;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/cookie/a;->a(Ljava/nio/file/Path;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
