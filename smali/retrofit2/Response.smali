.class public final Lretrofit2/Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final errorBody:Lw5/K;

.field private final rawResponse:Lw5/H;


# direct methods
.method private constructor <init>(Lw5/H;Ljava/lang/Object;Lw5/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw5/H;",
            "TT;",
            "Lw5/K;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/Response;->rawResponse:Lw5/H;

    iput-object p2, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/Response;->errorBody:Lw5/K;

    return-void
.end method

.method public static error(ILw5/K;)Lretrofit2/Response;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lw5/K;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    move/from16 v4, p0

    move-object/from16 v0, p1

    const-string v1, "body == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v1, 0x190

    if-lt v4, v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Lretrofit2/OkHttpCall$NoContentResponseBody;

    invoke-virtual {v0}, Lw5/K;->contentType()Lw5/t;

    move-result-object v2

    invoke-virtual {v0}, Lw5/K;->contentLength()J

    move-result-wide v5

    invoke-direct {v7, v2, v5, v6}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lw5/t;J)V

    new-instance v2, Lw5/A;

    invoke-direct {v2}, Lw5/A;-><init>()V

    const-string v3, "http://localhost/"

    invoke-virtual {v2, v3}, Lw5/A;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lw5/A;->a()Lw5/B;

    move-result-object v2

    if-ltz v4, :cond_1

    new-instance v6, Lw5/p;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v6, v1}, Lw5/p;-><init>([Ljava/lang/String;)V

    new-instance v0, Lw5/H;

    move-object v1, v2

    sget-object v2, Lw5/z;->r:Lw5/z;

    const-string v3, "Response.error()"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v15}, Lw5/H;-><init>(Lw5/B;Lw5/z;Ljava/lang/String;ILw5/n;Lw5/p;Lw5/K;Lw5/H;Lw5/H;Lw5/H;JJLA5/e;)V

    move-object v1, v0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lretrofit2/Response;->error(Lw5/K;Lw5/H;)Lretrofit2/Response;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "code < 0: "

    invoke-static {v4, v0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code < 400: "

    invoke-static {v4, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static error(Lw5/K;Lw5/H;)Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw5/K;",
            "Lw5/H;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lw5/H;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lretrofit2/Response;-><init>(Lw5/H;Ljava/lang/Object;Lw5/K;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(ILjava/lang/Object;)Lretrofit2/Response;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    move/from16 v4, p0

    const/16 v0, 0xc8

    if-lt v4, v0, :cond_2

    const/16 v0, 0x12c

    if-ge v4, v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lw5/A;

    invoke-direct {v1}, Lw5/A;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lw5/A;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lw5/A;->a()Lw5/B;

    move-result-object v1

    if-ltz v4, :cond_1

    new-instance v6, Lw5/p;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v6, v0}, Lw5/p;-><init>([Ljava/lang/String;)V

    new-instance v0, Lw5/H;

    sget-object v2, Lw5/z;->r:Lw5/z;

    const-string v3, "Response.success()"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v15}, Lw5/H;-><init>(Lw5/B;Lw5/z;Ljava/lang/String;ILw5/n;Lw5/p;Lw5/K;Lw5/H;Lw5/H;Lw5/H;JJLA5/e;)V

    move-object v1, v0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lw5/H;)Lretrofit2/Response;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "code < 0: "

    invoke-static {v4, v0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code < 200 or >= 300: "

    invoke-static {v4, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static success(Ljava/lang/Object;)Lretrofit2/Response;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lw5/A;

    invoke-direct {v1}, Lw5/A;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lw5/A;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lw5/A;->a()Lw5/B;

    move-result-object v4

    new-instance v9, Lw5/p;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v9, v0}, Lw5/p;-><init>([Ljava/lang/String;)V

    new-instance v3, Lw5/H;

    sget-object v5, Lw5/z;->r:Lw5/z;

    const-string v6, "OK"

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v3 .. v18}, Lw5/H;-><init>(Lw5/B;Lw5/z;Ljava/lang/String;ILw5/n;Lw5/p;Lw5/K;Lw5/H;Lw5/H;Lw5/H;JJLA5/e;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lretrofit2/Response;->success(Ljava/lang/Object;Lw5/H;)Lretrofit2/Response;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static success(Ljava/lang/Object;Lw5/H;)Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lw5/H;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lw5/H;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lretrofit2/Response;-><init>(Lw5/H;Ljava/lang/Object;Lw5/K;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Ljava/lang/Object;Lw5/p;)Lretrofit2/Response;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lw5/p;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "headers == null"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lw5/o;

    invoke-direct {v0}, Lw5/o;-><init>()V

    invoke-virtual {v1}, Lw5/p;->d()Lw5/o;

    move-result-object v0

    new-instance v1, Lw5/A;

    invoke-direct {v1}, Lw5/A;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lw5/A;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lw5/A;->a()Lw5/B;

    move-result-object v4

    invoke-virtual {v0}, Lw5/o;->c()Lw5/p;

    move-result-object v9

    new-instance v3, Lw5/H;

    sget-object v5, Lw5/z;->r:Lw5/z;

    const-string v6, "OK"

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v3 .. v18}, Lw5/H;-><init>(Lw5/B;Lw5/z;Ljava/lang/String;ILw5/n;Lw5/p;Lw5/K;Lw5/H;Lw5/H;Lw5/H;JJLA5/e;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lretrofit2/Response;->success(Ljava/lang/Object;Lw5/H;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public code()I
    .locals 1

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lw5/H;

    iget v0, v0, Lw5/H;->s:I

    return v0
.end method

.method public errorBody()Lw5/K;
    .locals 1

    iget-object v0, p0, Lretrofit2/Response;->errorBody:Lw5/K;

    return-object v0
.end method

.method public headers()Lw5/p;
    .locals 1

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lw5/H;

    iget-object v0, v0, Lw5/H;->u:Lw5/p;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lw5/H;

    invoke-virtual {v0}, Lw5/H;->b()Z

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lw5/H;

    iget-object v0, v0, Lw5/H;->r:Ljava/lang/String;

    return-object v0
.end method

.method public raw()Lw5/H;
    .locals 1

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lw5/H;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lw5/H;

    invoke-virtual {v0}, Lw5/H;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
