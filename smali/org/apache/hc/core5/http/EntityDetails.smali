.class public interface abstract Lorg/apache/hc/core5/http/EntityDetails;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getContentEncoding()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getTrailerNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isChunked()Z
.end method
