.class public Lorg/apache/hc/client5/http/impl/classic/NullBackoffStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBackoff(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldBackoff(Lorg/apache/hc/core5/http/HttpResponse;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
