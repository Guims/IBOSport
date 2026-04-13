.class Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lw5/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lw5/t;

.field private final delegate:Lw5/F;


# direct methods
.method public constructor <init>(Lw5/F;Lw5/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lw5/F;

    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lw5/t;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lw5/F;

    invoke-virtual {v0}, Lw5/F;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lw5/t;
    .locals 1

    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lw5/t;

    return-object v0
.end method

.method public writeTo(LK5/h;)V
    .locals 1

    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lw5/F;

    invoke-virtual {v0, p1}, Lw5/F;->writeTo(LK5/h;)V

    return-void
.end method
