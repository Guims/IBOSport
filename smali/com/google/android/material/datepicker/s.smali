.class public abstract Lcom/google/android/material/datepicker/s;
.super Landroidx/fragment/app/t;


# instance fields
.field public final j0:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/s;->j0:Ljava/util/LinkedHashSet;

    return-void
.end method
