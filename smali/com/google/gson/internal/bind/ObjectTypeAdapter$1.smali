.class Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/w;


# instance fields
.field public final synthetic b:Lcom/google/gson/u;


# direct methods
.method public constructor <init>(Lcom/google/gson/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->b:Lcom/google/gson/u;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/j;Lp4/a;)Lcom/google/gson/v;
    .locals 1

    iget-object p2, p2, Lp4/a;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    iget-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->b:Lcom/google/gson/u;

    invoke-direct {p2, p1, v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/google/gson/j;Lcom/google/gson/u;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
