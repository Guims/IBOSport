.class Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field volatile delay:Lorg/apache/hc/core5/util/TimeValue;

.field volatile retrying:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;-><init>()V

    return-void
.end method
