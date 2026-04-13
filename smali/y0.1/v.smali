.class public final synthetic Ly0/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Ly0/z;


# direct methods
.method public synthetic constructor <init>(Ly0/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/v;->b:Ly0/z;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Ly0/v;->b:Ly0/z;

    invoke-interface {v0, p2}, Ly0/z;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Ly0/z;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
