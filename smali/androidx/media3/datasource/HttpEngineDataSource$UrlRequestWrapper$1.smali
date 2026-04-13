.class Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/net/http/UrlRequest$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;->getStatus()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

.field final synthetic val$conditionVariable:Lk0/g;

.field final synthetic val$statusHolder:[I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;[ILk0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->this$0:Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

    iput-object p2, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$statusHolder:[I

    iput-object p3, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$conditionVariable:Lk0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$statusHolder:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$conditionVariable:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z

    return-void
.end method
