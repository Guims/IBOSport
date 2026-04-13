.class public final Lcom/google/firebase/ktx/FirebaseCommonLegacyRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/b;",
            ">;"
        }
    .end annotation

    const-string v0, "fire-core-ktx"

    const-string v1, "21.0.0"

    invoke-static {v0, v1}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
