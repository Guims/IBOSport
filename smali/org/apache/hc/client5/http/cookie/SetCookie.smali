.class public interface abstract Lorg/apache/hc/client5/http/cookie/SetCookie;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/Cookie;


# virtual methods
.method public abstract setDomain(Ljava/lang/String;)V
.end method

.method public setExpiryDate(Ljava/time/Instant;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->toDate(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/hc/client5/http/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    return-void
.end method

.method public abstract setExpiryDate(Ljava/util/Date;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setHttpOnly(Z)V
    .locals 0

    return-void
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method
