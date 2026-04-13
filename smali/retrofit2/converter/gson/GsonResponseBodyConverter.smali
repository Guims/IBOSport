.class final Lretrofit2/converter/gson/GsonResponseBodyConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lw5/K;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/google/gson/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/v;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/j;


# direct methods
.method public constructor <init>(Lcom/google/gson/j;Lcom/google/gson/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/j;",
            "Lcom/google/gson/v;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lcom/google/gson/j;

    iput-object p2, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lcom/google/gson/v;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw5/K;

    invoke-virtual {p0, p1}, Lretrofit2/converter/gson/GsonResponseBodyConverter;->convert(Lw5/K;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lw5/K;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw5/K;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lcom/google/gson/j;

    invoke-virtual {p1}, Lw5/K;->charStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lq4/a;

    invoke-direct {v2, v1}, Lq4/a;-><init>(Ljava/io/Reader;)V

    iget v0, v0, Lcom/google/gson/j;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    if-eqz v0, :cond_2

    iput v0, v2, Lq4/a;->D:I

    :try_start_0
    iget-object v0, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lcom/google/gson/v;

    invoke-virtual {v0, v2}, Lcom/google/gson/v;->b(Lq4/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2}, Lq4/a;->M()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lw5/K;->close()V

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/gson/m;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lw5/K;->close()V

    throw v0

    :cond_2
    const/4 p1, 0x0

    throw p1
.end method
