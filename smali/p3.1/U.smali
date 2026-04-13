.class public final Lp3/U;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;
.implements Ljava/io/Serializable;


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "expectedValuesPerKey"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lp3/q;->c(ILjava/lang/String;)V

    iput v1, p0, Lp3/U;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lp3/U;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
