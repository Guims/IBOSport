.class public final Lorg/apache/hc/core5/http/impl/BasicEntityDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/EntityDetails;


# instance fields
.field private final contentType:Lorg/apache/hc/core5/http/ContentType;

.field private final len:J


# direct methods
.method public constructor <init>(JLorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/hc/core5/http/impl/BasicEntityDetails;->len:J

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/BasicEntityDetails;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-void
.end method


# virtual methods
.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/BasicEntityDetails;->len:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicEntityDetails;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
