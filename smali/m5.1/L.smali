.class public final Lm5/L;
.super Ljava/lang/Object;

# interfaces
.implements Lm5/M;


# instance fields
.field public final b:Lm5/b0;


# direct methods
.method public constructor <init>(Lm5/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/L;->b:Lm5/b0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lm5/b0;
    .locals 1

    iget-object v0, p0, Lm5/L;->b:Lm5/b0;

    return-object v0
.end method
