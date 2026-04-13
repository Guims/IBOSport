.class public final LE1/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:LE1/h;

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LA/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LA/j;->q:Ljava/lang/Object;

    check-cast v0, LE1/h;

    iput-object v0, p0, LE1/c;->a:LE1/h;

    iget-object p1, p1, LA/j;->r:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LE1/c;->b:Ljava/lang/String;

    return-void
.end method
