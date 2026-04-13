.class public final Lt4/c;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic A:Lt4/e;

.field public final synthetic b:Lt4/d;

.field public final synthetic q:I

.field public final synthetic r:Lib/player/models/DataRequestBody;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Ljava/lang/String;

.field public final synthetic v:Ljava/lang/String;

.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Ljava/lang/String;

.field public final synthetic z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt4/e;Lt4/d;ILib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/c;->A:Lt4/e;

    iput-object p2, p0, Lt4/c;->b:Lt4/d;

    iput p3, p0, Lt4/c;->q:I

    iput-object p4, p0, Lt4/c;->r:Lib/player/models/DataRequestBody;

    iput-object p5, p0, Lt4/c;->s:Ljava/lang/String;

    iput-object p6, p0, Lt4/c;->t:Ljava/lang/String;

    iput-object p7, p0, Lt4/c;->u:Ljava/lang/String;

    iput-object p8, p0, Lt4/c;->v:Ljava/lang/String;

    iput-object p9, p0, Lt4/c;->w:Ljava/lang/String;

    iput-object p10, p0, Lt4/c;->x:Ljava/lang/String;

    iput-object p11, p0, Lt4/c;->y:Ljava/lang/String;

    iput-object p12, p0, Lt4/c;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 12

    iget-object v10, p0, Lt4/c;->y:Ljava/lang/String;

    iget-object v11, p0, Lt4/c;->z:Ljava/lang/String;

    iget-object v0, p0, Lt4/c;->A:Lt4/e;

    iget-object v1, p0, Lt4/c;->b:Lt4/d;

    iget v2, p0, Lt4/c;->q:I

    iget-object v3, p0, Lt4/c;->r:Lib/player/models/DataRequestBody;

    iget-object v4, p0, Lt4/c;->s:Ljava/lang/String;

    iget-object v5, p0, Lt4/c;->t:Ljava/lang/String;

    iget-object v6, p0, Lt4/c;->u:Ljava/lang/String;

    iget-object v7, p0, Lt4/c;->v:Ljava/lang/String;

    iget-object v8, p0, Lt4/c;->w:Ljava/lang/String;

    iget-object v9, p0, Lt4/c;->x:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lt4/e;->c(Lt4/d;ILib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2

    iget p1, p0, Lt4/c;->q:I

    iget-object v0, p0, Lt4/c;->b:Lt4/d;

    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/DataRequestBody;

    invoke-interface {v0, p2, p1}, Lt4/d;->e(Lib/player/models/DataRequestBody;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lt4/d;->e(Lib/player/models/DataRequestBody;I)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
